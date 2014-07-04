loop do
  char = gets
  p char
  break if char.nil?
end
  "a".upto("z") do |alpha|
    num = char.chomp.scan(/[#{alpha}]/i).size
    puts "#{alpha} : #{num}"
  end
