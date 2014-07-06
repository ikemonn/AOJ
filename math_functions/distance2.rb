include Math
n = gets.chomp.to_i
x = gets.chomp.split.map(&:to_f)
y = gets.chomp.split.map(&:to_f)
sum1, sum2, sum3 = 0, 0, 0
sum4 = []
n.times do |num|
  sum1 += (x[num] - y[num]).abs
  sum2 += (x[num] - y[num]) ** 2
  sum3 += ((x[num] - y[num]) ** 3).abs
  sum4 << (x[num] - y[num]).abs
end

p sum1, sqrt(sum2), sum3 ** (1.0/3.0), sum4.max
