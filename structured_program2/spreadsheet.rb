r, c = gets.split.map(&:to_i)
cell = []
r.times do |num|
  cell[num] = gets.chomp.split.map(&:to_i)
end

cell[r] = []
# 列の合計
c.times do |col|
  col_sum = 0
  r.times do |row|
    col_sum += cell[row][col]
  end
  cell[r][col] = col_sum
end

# 行の合計
(r + 1).times do |row|
  row_sum = 0
  c.times do |col|
    row_sum += cell[row][col]
  end
  cell[row] << row_sum
  puts cell[row].join(" ")
end
