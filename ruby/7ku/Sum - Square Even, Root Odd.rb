# frozen_string_literal: true

# Sum - Square Even, Root Odd
#  https://www.codewars.com/kata/5a4b16435f08299c7000274f/train/ruby

def sum_square_even_root_odd(nums)
  nums.sum { |k| k.even? ? k * k : k**0.5 }.round(2)
end

p sum_square_even_root_odd([4, 5, 7, 8, 1, 2, 3, 0]) # 91.61
