loop do
  n, x = gets.split.map(&:to_i)
  break if n == 0 && x == 0
  ans = 0 
  1.upto(n - 2) do |a|
    (a + 1).upto(n - 1) do |b|
      (b + 1).upto(n) do |c|
        ans += 1 if a + b + c == x
      end
    end
  end
  puts ans
end
