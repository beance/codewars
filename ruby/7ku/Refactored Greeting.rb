# frozen_string_literal: true

# Refactored Greeting
# https://www.codewars.com/kata/5121303128ef4b495f000001

class Person
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def greet(your_name)
    "Hello #{your_name}, my name is #{@name}"
  end
end
