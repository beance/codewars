# frozen_string_literal: true

# Magic Three
# https://www.codewars.com/kata/588622835d173135b7000103/train/ruby

def is_magic_three(array)
  array.repeated_combination(3).any? { |arr| arr.reduce(:+).zero? }
end

p is_magic_three([-10, 4, 5, 7, 3])
p is_magic_three([1, 4, 2, -9])
p is_magic_three([0])
