w = gets.chomp
cnt = 0
while (t = gets.chomp) != 'END_OF_TEXT' do
  words = t.downcase.split
  words.each do |word|
    cnt += 1 if word == w
  end
end
puts cnt
