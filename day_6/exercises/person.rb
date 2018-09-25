# Create a person class with at least 2 attributes and 2 behaviors.  Call all
# person methods below the class so that they print their result to the
# terminal.

#YOUR CODE HERE
class Person
  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduction
    puts "Hey my name is #{name} and i am #{age} years old!"
  end

  def study(subject)
    puts "#{name} studys #{subject} for the night."
  end

  def gets_grade(grade)
    puts "#{name} got a/an #{grade}"
  end
end

ty = Person.new("Ty", "24")
ty.introduction
ty.study("Ruby")
ty.gets_grade("A")
