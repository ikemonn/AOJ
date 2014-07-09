include Math

while (n = gets.chomp.to_f) != 0 do
  s = gets.chomp.split.map(&:to_f)
  avg = s.reduce(:+) / n
  sum = 0
  puts sqrt(s.map{ |num| (num - avg)**2 }.reduce(:+) / n)
end
