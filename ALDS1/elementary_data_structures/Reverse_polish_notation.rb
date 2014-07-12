array = []

gets.chomp.split.each do |elem|

  if elem =~ /[0-9]/
    array << elem
  else
    a = array.pop(2)
    array << eval("#{a[0]} #{elem} #{a[1]}")
  end

end
p array.pop
