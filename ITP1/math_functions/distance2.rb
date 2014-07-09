include Math

def calc_distance(x, y, p)
  if p == Float::INFINITY
    x.map.with_index { |x, i| (x - y[i]).abs }.max
  else
    sum = 0
    x.each.with_index do |x, i|
      sum += (x - y[i]).abs ** p
    end
    sum ** (1.0 / p)
  end
end

gets
x = gets.split.map(&:to_f)
y = gets.split.map(&:to_f)

puts calc_distance(x, y, 1.0)
puts calc_distance(x, y, 2.0)
puts calc_distance(x, y, 3.0)
puts calc_distance(x, y, Float::INFINITY)
