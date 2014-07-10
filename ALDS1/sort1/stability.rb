gets;
$suits = {}
cards = gets.split.map do |card|
  suit = card[0]
  num = card[1]
  $suits[num] = [] unless $suits.include? num
  $suits[num] << suit
  [suit, num]
end

def bubble_sort(a)
  cnt = 0
  0.upto(a.size - 1) do |i|
    (a.size - 1).downto(i + 1) do |j|
      if a[j][1] < a[j - 1][1]
        a[j], a[j - 1] = a[j - 1], a[j]
        cnt += 1
      end
    end
  end
  a
end

def selection_sort(a)
  cnt = 0
  n = a.size
  0.upto(n-1) do |i|
    mini = i
    i.upto(n-1) do |j|
      if a[j][1] < a[mini][1]
        mini = j
      end
    end
    if i != mini
      a[i], a[mini] = a[mini], a[i]
      cnt += 1
    end
  end
  a
end


def check(a)
  (1).upto(a.length - 1) do |i|
    return 'Not stable' if a[i - 1][1] == a[i][1] && $suits[a[i][1].to_s].index(a[i][0]) < $suits[a[i][1].to_s].index(a[i - 1][0])
  end
  return 'Stable'
end

bubble =  bubble_sort(cards.clone)
puts bubble.map { |card| card * '' } * ' '
puts check(bubble)

selection = selection_sort(cards.clone)
puts selection.map {|card| card * ''} * ' '
puts check(selection)
