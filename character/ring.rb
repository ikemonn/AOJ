a = []
while line = gets do
  a << line.chomp
end
s, p = a[0], a[1]

if (s * 2).include?(p)
  puts "Yes"
else
  puts "No"
