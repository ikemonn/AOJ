array = []
(gets.to_i).times do
  command, num = gets.split
  num = num.to_i
  begin
    case command
    when 'insert'
      array.unshift(num)
    when 'delete'
      array.delete_at(array.index(num))
    when 'deleteFirst'
      array.shift
    when 'deleteLast'
      array.pop
    end
  rescue
    next
  end
end
puts array * " "
