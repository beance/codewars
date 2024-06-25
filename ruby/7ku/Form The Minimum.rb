# frozen_string_literal: true

# Form The Minimum
# https://www.codewars.com/kata/5ac6932b2f317b96980000ca/train/ruby

def min_value(digits)
  digits.uniq.sort.join.to_i
end

p min_value([4, 7, 5, 7])
