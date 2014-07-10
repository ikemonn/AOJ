gets
a = gets.chomp.split.map(&:to_i)
cnt = 0
0.upto(a.size-1) do |i|
  (a.size-1).downto(i+1) do |j|
    if a[j] < a[j-1]
      a[j], a[j-1] = a[j-1], a[j]
      cnt += 1
    end
  end
end
puts a * ' '
puts cnt
