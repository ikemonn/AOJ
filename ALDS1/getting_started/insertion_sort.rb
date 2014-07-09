n = gets.to_i
a = gets.chomp.split.map(&:to_i)
puts a * ' '
1.upto(n - 1) do |i|
  key = a[i]
  j = i - 1
  while j >= 0 && a[j] > key
    a[j + 1] = a[j]
    j -= 1
  end
  a[j + 1] = key
  puts a * ' '
end
