# frozen_string_literal: true

# Smallest value of an array
# https://www.codewars.com/kata/544a54fd18b8e06d240005c0/train/ruby

def find_smallest(numbers, to_return)
  to_return == 'value' ? numbers.min : numbers.index(numbers.min)
end

p find_smallest([1, 2, 3, 4, 5], 'value') # // => 1
p find_smallest([1, 2, 3, 4, 5], 'index') # // => 0
