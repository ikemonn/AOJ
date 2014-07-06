include Math

while (n = gets.chomp.to_f) != 0 do
  s = gets.chomp.split.map(&:to_f)
  avg = s.reduce(:+) / n
  sum = 0

  s.each do |num|
    sum += (num - avg) ** 2
  end

  puts sqrt(sum / n)

end
