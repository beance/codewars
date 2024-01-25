# frozen_string_literal: true

# https://www.codewars.com/kata/558fc85d8fd1938afb000014
# Sum of two lowest positive integers
def sum_two_smallest_numbers(numbers)
  numbers.min(2).sum
end
