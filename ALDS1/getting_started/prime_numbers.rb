require 'prime'
cnt = 0
(gets.to_i).times do
  cnt += 1 if gets.to_i.prime?
end
puts cnt
