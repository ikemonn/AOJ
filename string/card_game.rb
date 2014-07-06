taro = 0
hanako = 0
(gets.to_i).times do
  a, b = gets.chomp.split
  if a < b
    hanako += 3
  elsif a == b
    taro += 1
    hanako += 1
  else
    taro += 3
  end
end
puts "#{taro} #{hanako}"
