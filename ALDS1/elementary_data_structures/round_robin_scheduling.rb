n, q = gets.split.map(&:to_i)
process_list = []
n.times do
  name, time = gets.chomp.split
  process_list << {name: name, time: time.to_i}
end

cnt = 0


while process_list.empty? == false do
  process = process_list.shift

  if process[:time] - q <= 0
    cnt += process[:time]
    puts "#{process[:name]} #{cnt}"
  else
    cnt += q
    process_list << {name: process[:name], time: process[:time] - q}
  end
end
