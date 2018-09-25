## Day 5 Questions

1. In your own words, what is a Class?
  - A class is an object that can have both attributes and behaviors, its put into a class with other items that contain similar attributes or behaviors. E.g. cats all have 4 legs and fur so while my two cats are different individually(weight, age) they belong to the same class cat.

1. In relation to a Class, what is an attribute?
  - and attribute defines the item or object in a class, from my above example the weight and age of my cats would be their attributes

1. In relation to a Class, what is behavior?
  - A behavior would be the method (or function) that the object within a class can preform. Using above example, i can make one cat "play" within the class.

1. In the space below, create a Dog class with at least 2 attributes and 2 behaviors
 -
class dog
  attr_accessor :name, :breed

  def initialize(breed, name)
    @breed  = breed
    @name   = name

  def bark
   puts "Woof!"
  end

  def eat
   puts "#{name} eats!"
  end
end

1. How do you create an instance of a class?

Scooby = dog.new("Scooby", "Great Dane?")

1. What questions do you still have about classes in Ruby?
- none at this time, the process makes sense its just practicing them enough that i remember the "formulas" for the code itself.
