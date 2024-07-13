# frozen_string_literal: true

# Person Class Bug
# https://www.codewars.com/kata/513f887e484edf3eb3000001/train/ruby
#
class Person
  attr_reader :age

  def initialize(firstName, lastName, age)
    @firstName = firstName
    @lastName = lastName
    @age = age
  end

  def full_name
    "#{@firstName} #{@lastName}"
  end
end
