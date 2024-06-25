# frozen_string_literal: true

# Doggy Daycare
# https://www.codewars.com/kata/56951add53eccacf44000030/train/ruby

class Dog
  def initialize(name, age, breed, vaccinated, wormed)
    @name = name
    @age = age
    @breed = breed
    @vaccinated = vaccinated
    @wormed = wormed
  end

  def check_dog
    return "#{@name} can be accepted" if @vaccinated == true && @wormed == true
    return "#{@name} can not be accepted" if @vaccinated == false && @wormed == false

    "#{@name} can only be accepted by itself"
  end
end

Dog.new('Spot', 5, 'Labrador', true, false).check_dog # "Spot can only be accepted by itself")
