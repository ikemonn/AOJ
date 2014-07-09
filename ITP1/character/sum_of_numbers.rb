loop do
  x = gets
  break if x.to_i == 0
  p x.chars.map(&:to_i).reduce(:+)
end
