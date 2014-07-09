n = gets.to_i
a = gets.split.map(&:to_i)
cnt = 0
0.upto(n-1) do |i|
  mini = i
  i.upto(n-1) do |j|
    if a[j] < a[mini]
      mini = j
    end
  end
  if i != mini
    a[i], a[mini] = a[mini], a[i]
    cnt += 1
  end
end
puts a * ' '
puts cnt
