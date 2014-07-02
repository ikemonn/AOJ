loop do
  m, f, r = gets.split.map(&:to_i)
  break if m == -1 && f == -1 && r == -1

  point = m + f

  if m == -1 || f == -1
    puts "F"
  elsif point >= 80
    puts "A"
  elsif point >= 65 && point < 80
    puts "B"
  elsif (point >= 50 && point < 65) || r >= 50
    puts "C"
  elsif point >= 30 && point < 50
    puts "D"
  elsif point < 30
    puts "F"
  else
    puts "Error"
  end
end
