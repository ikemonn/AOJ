while (s = gets.chomp) != '-' do
  gets.to_i.times do
    s += s.slice!(0, gets.to_i)
  end
  puts s
end
