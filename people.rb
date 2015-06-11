# Lesson 4
# Ruby Object Oriented Programming
# Exercise 1


# Created a parent class called Person
# This will apply to the Student class and Instructor class

class Person
  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi my name is #{@name}."
  end
end


class Student < Person
  def learn
    puts "I get it!"
  end
end

class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object."
  end
end

first_instructor = Instructor.new("Chris")
first_instructor.greeting

first_student = Student.new("Cristina")
first_student.greeting

first_instructor.teach
first_student.learn

# This will not work because the .teach method is defined inside the Intructor class
# Scope!!

first_student.teach















