n = gets.to_i
min = gets.to_i
r = gets.to_i
d = r - min
max = d
min = r if r < min

(n - 2).times do
  r = gets.to_i
  d = r - min
  max = d if max < d
  min = r if r < min
end

puts max
