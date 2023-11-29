# frozen_string_literal: true

# Squares in a Rectangle
# https://www.codewars.cox/kata/5a62da60d39ec5d947000093/train/ruby

def find_squares(x, y)
  (1..[x, y].min + 1).sum { |i| (x - i + 1) * (y - i + 1) }
end

p find_squares(11, 4)
