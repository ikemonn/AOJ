loop do
  break if gets.split.map(&:to_i).zero?
  puts gets.split.map(&:to_i)
end
