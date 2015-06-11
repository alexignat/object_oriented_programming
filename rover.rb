# Exercise 2: Mars Rover

class Rover

  #We only need attr_reader b/c we we just need to read commands, not change them
  attr_reader :x, :y, :direction

  def initialize(x, y, direction) # direction ="N"
    @x = x
    @y = y
    @compass = ["N", "E", "S", "W"]
    @facing = @compass.index(direction)
  end

  def read_instruction(command)
    if command = "R"
      turn_right
    elsif command = "L"
      turn_left
    elsif command = "M"
      move
    end
  end

  def turn_right
    @compass = @compass.rotate
  end


  def turn_left
    @compass = @compass.rotate(-1)
  end

  # The rover will move in whatever direction it is facing
  # The grid is a set of numbers, so if you want it to move
  # up, down, left or right it will execute those instructions by incrementing the x and y coordinates

def move
    if @compass[@facing] == "N"
      @y += 1
    elsif @compass[@facing] == "S"
      @y -= 1
    elsif @compass[@facing] == "E"
      @x += 1
    elsif @compass[@facing]== "W"
      @x -= 1
    end

  end

  def to_s
    "Coordinates: #{@x}, #{@y}, Facing #{@compass[@facing]}"
  end

end

# Figure out a way to get info and then pass the methods onto it




# Create the rover class

r = Rover.new(2, 2, "N")

r.turn_right
puts r.to_s

r.turn_left
puts r.to_s

r.move
puts r.to_s
