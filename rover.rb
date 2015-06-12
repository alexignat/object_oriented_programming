# Exercise 2: Mars Rover

class Rover

  #We only need attr_reader b/c we we just need to read commands, not change them
  attr_reader :x, :y, :direction, :name

  def initialize(x, y, direction, name) # direction ="N"
    @x = x
    @y = y
    @name = name
    @compass = ["N", "E", "S", "W"]
    @facing = @compass.index(direction)
  end

  def take_command(instructions)
    instructions.each_char do |x|
      read_instruction(x)
    end
  end

  def read_instruction(command)
    if command == "R"
      turn_right
    elsif command == "L"
      turn_left
    elsif command == "M"
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

  def dir
    @compass[@facing]
  end

  def move
    if dir == "N"
      @y += 1
    elsif dir == "S"
      @y -= 1
    elsif dir == "E"
      @x += 1
    elsif dir== "W"
      @x -= 1
    end
  end

  def to_s
    "#{@x}, #{@y}, Facing #{@compass[@facing]}" #What exactly does this do?
  end

  def take_action
    puts "---------------\nIt's time to give #{name} some instructions.\nPlease enter a set of commands: "
    instructions = gets.chomp.upcase
    take_command(instructions)
    puts "The new coordinates of #{name} are #{to_s}: "
  end

end

# Create the rover class

puts "This is the starting position of the rover:"

rover_1 = Rover.new(1, 2, "N", "Rover 1")
puts "Rover 1: #{rover_1}"

rover_2 = Rover.new(3, 3, "E", "Rover 2")
puts "Rover 2: #{rover_2}"

rover_1.take_action
rover_2.take_action


















# puts "Turn rover right:"

# rover_1.read_instruction("R")
# puts rover_1

# puts "Turn rover left:"

# rover_1.turn_left
# puts rover_1

# puts "Move the rover:"

# rover_1.move
# puts rover_1




















