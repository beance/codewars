# frozen_string_literal: true

# The Hotel with Infinite Rooms
# https://www.codewars.com/kata/5b9cf881d6b09fc9ee0002b1/train/ruby




def group_size(s, d)
  b = 2 * s - 1
  discriminant = b**2 + 8 * d
  s + ((-b + Math.sqrt(discriminant)) / 2).ceil - 1
end







p group_size(3, 10)
p group_size(1, 6)




p group_size(100, 1000)