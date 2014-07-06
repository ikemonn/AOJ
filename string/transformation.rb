str = gets.chomp

(gets.to_i).times do
  operator, a, b, replace_str = gets.chomp.split
  a, b = a.to_i, b.to_i
  case operator
  when "replace"
    str[a..b] = replace_str
  when "reverse"
    str[a..b] = str[a..b].reverse
  when "print"
    puts str[a..b]
  end
end
