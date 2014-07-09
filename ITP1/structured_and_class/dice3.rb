class Dice
  attr_reader :top, :front, :right, :left, :back, :bottom
  def initialize(pips)
    @top, @front, @right, @left, @back, @bottom = pips.split.map(&:to_i)
  end

  def rotate(dir)
    case dir
    when 'E'; tmp = @top; @top = @left; @left = @bottom; @bottom = @right; @right = tmp
    when 'W'; tmp = @top; @top = @right; @right = @bottom; @bottom = @left; @left = tmp
    when 'S'; tmp = @top; @top = @back; @back = @bottom; @bottom = @front; @front = tmp
    when 'N'; tmp = @top; @top = @front; @front = @bottom; @bottom = @back; @back = tmp
    when 'Z'; tmp = @front; @front = @right; @right = @back; @back = @left; @left = tmp
    end
  end

  def pips
    [
      {dir: 'top', pip: top},
      {dir: 'front', pip: front},
      {dir: 'right', pip: right},
      {dir: 'left', pip: left},
      {dir: 'back', pip: back},
      {dir: 'bottom', pip: bottom}
    ]
  end
end

d1 = Dice.new gets
d2 = Dice.new gets

d2.pips.each do |item|
  if d1.top != item[:pip]
    next
  end
  _d2 = d2.clone
  case item[:dir]
  when 'top'
  when 'bottom'; _d2.rotate('N'); _d2.rotate('N')
  when 'front'; _d2.rotate('N')
  when 'back'; _d2.rotate('S')
  when 'left'; _d2.rotate('E')
  when 'right'; _d2.rotate('W')
  end

  4.times do
    if d1.bottom == _d2.bottom &&
      d1.front == _d2.front && d1.back == _d2.back &&
      d1.left == _d2.left && d1.right == _d2.right
      puts 'Yes'
      exit
    end
    _d2.rotate('Z')
  end
end

puts 'No'
