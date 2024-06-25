# frozen_string_literal: true

# zero-balanced Array
# https://www.codewars.com/kata/59c6fa6972851e8959000067/train/ruby

def is_zero_balanced(arr)
  arr.include?(0) && arr.reduce(:+).zero?
end

p is_zero_balanced([3]) # false
p is_zero_balanced([-3]) # false
p is_zero_balanced([0, 0, 0, 0, 0, 0]) # true
p is_zero_balanced([0, 1, -1]) # true
p is_zero_balanced([]) # false
p is_zero_balanced([3, -2, -1]) # false
p is_zero_balanced([0]) # true
p is_zero_balanced([1, 1, -2]) # false
p is_zero_balanced([-1, 1, -2, 2, -2, -2, -4, 4]) # false
p is_zero_balanced([0, 0, 0, 0, 0]) # true
