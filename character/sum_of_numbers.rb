loop do
  x = gets
  break if x.to_i == 0
  sum = 0
  x.gsub(/\d/){ sum += $&.to_i }
  puts sum
end
