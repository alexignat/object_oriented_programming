# Exercise 2: Mars Rover

class Rover

  attr_reader :x, :y, :direction

  def initialize(x, y, direciton)
    @x = x
    @y = y
    @direction = direction
  end

  def read_instruction

  end

  def turn_left
  end

  def turn_right
  end

  def move
    if @direction == "N"
      @y += 1
    elsif @direction == "S"
      @y -= 1
    elsif @direction = "E"
      @x += 1
    elsif @direction = "W"
      @x -= 1
    end

  end

  def to_s
    "Coordinates: #{@x}, #{@y}, Facing #{@direction}"
  end

end


r = Rover.new(2, 2, "N")

puts r.to_s
