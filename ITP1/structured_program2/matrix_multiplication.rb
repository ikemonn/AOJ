n, m, l = gets.split.map(&:to_i)
a = []
b = []

n.times do |num|
  a[num] = gets.split.map(&:to_i)
end
m.times do |num|
  b[num] = gets.split.map(&:to_i)
end
b = b.transpose

ans = []

n.times do |n_num|
  l.times do |l_num|
    sum = 0
    m.times do |m_num|
      sum += a[n_num][m_num] * b[l_num][m_num]
    end
    print ' ' if l_num != 0
    print sum
  end
  puts
end
