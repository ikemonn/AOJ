gets
a = gets.split.map(&:to_i)
gets
b = gets.split.map(&:to_i)
cnt = 0
b.each do |num|
  if (index = a.index(num)) != nil
    a.delete_at(index)
    cnt += 1
  end
end
p cnt
