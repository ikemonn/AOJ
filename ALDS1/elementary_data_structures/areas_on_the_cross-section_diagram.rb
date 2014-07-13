def calc_area(backslash, slash, underscore)
  # (上底+下底) * 高さ / 2
  (underscore + (slash + backslash + underscore) * (backslash)) / 2
end


areas = gets.chomp.to_s
backslash = 0
slash = 0
underscore = 0
s = []

areas.chars do |char|
  case char
  when '\\'
    backslash += 1
  when '/'
    slash += 1
  when '_'
    underscore += 1
  end

  if backslash == slash
    s << calc_area(backslash, slash, underscore)
    backslash, slash, underscore = 0, 0, 0
  end
end
puts s.reduce(:+)
puts "#{s.size} #{s * " "}"
