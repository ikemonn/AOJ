ans = {}
("a".."z").each do |s|
  ans[s] = 0
end

while (ln = gets) do
  ln.downcase.gsub(/[^a-z]/, '').chars do |key|
    ans[key] += 1
  end
end

ans.each do |key, val|
  puts "#{key} : #{val}"
end
