x1, y1, x2, y2 = gets.chomp.split.map(&:to_f)
puts Math.hypot(x1-x2, y1-y2)
