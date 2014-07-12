array = []

gets.chomp.split.each do |elem|

  if elem =~ /[0-9]/
    array.push(elem)
  else
    a = array.pop.to_i
    b = array.pop.to_i
    case elem
    when '+'
      array.push(b + a)
    when '-'
      array.push(b - a)
    when '*'
      array.push(b * a)
    end
  end

end
p array.pop
