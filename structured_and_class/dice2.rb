class Dice
  attr_reader :top, :front, :right, :left, :back, :bottom

  def initialize(pips)
    @top, @front, @right, @left, @back, @bottom = pips.split.map(&:to_i)
  end

  def rotate(dir)
    case dir
    when 'E'; tmp = @top; @left = @top; @left = @bottom; @bottom = @right; @right = tmp
    when 'W'; tmp = @top; @top = @right; @right = @bottom; @bottom = @left; @left = tmp
    when 'S'; tmp = @top; @top = @back; @back = @bottom; @bottom = @front; @front = tmp
    when 'N'; tmp = @top; @top = @front; @front = @bottom; @bottom = @back; @back = tmp
    when 'Z'; tmp = @front; @front = @right; @right = @back; @back = @left; @left = tmp
    end
  end
end

d = Dice.new gets
gets.to_i.times do
  t, f = gets.split.map(&:to_i)
  case t
  when d.top
  when d.bottom; d.rotate('N'); d.rotate('N');
  when d.front; d.rotate('N');
  when d.back; d.rotate('S');
  when d.left; d.rotate('E');
  when d.right; d.rotate('W');
  end

  d.rotate('Z') until d.front == f
  puts d.right
end
