class Dice

  def initialize(pip)
    @pip = pip
  end

  def roll(direction_list)
    direction_list.chars do |direction|
      case direction
      when 'S'
        @pip[0], @pip[1], @pip[4], @pip[5] = @pip[4], @pip[0], @pip[5], @pip[1]
      when 'N'
        @pip[0], @pip[1], @pip[4], @pip[5] = @pip[1], @pip[5], @pip[0], @pip[4]
      when 'E'
        @pip[0], @pip[2], @pip[3], @pip[5] = @pip[3], @pip[0], @pip[5], @pip[2]
      when 'W'
        @pip[0], @pip[2], @pip[3], @pip[5] = @pip[2], @pip[5], @pip[0], @pip[3]
      end
    end
    puts @pip[0]
  end

end

pip = gets.chomp.split.map(&:to_i)
dice = Dice.new(pip)
dice.roll(gets.chomp)
