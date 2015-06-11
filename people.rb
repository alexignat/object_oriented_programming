# Lesson 4
# Ruby Object Oriented Programming
# Exercise 1


# Created a parent class called Person
# This will apply to the Student class and Instructor class


class Person
  def initialize(name)
    @name = name
  end

  def say_hi(name)
    puts "Hi, my name is #{name}"
  end
end

class Student < Person
  def learn
    "I get it!"
  end
end

class Instructor <Person
  def teach
    "Everything in Ruby is an Object"
  end
end