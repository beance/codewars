# frozen_string_literal: true

# Is this a triangle?
# https://www.codewars.com/kata/56606694ec01347ce800001b
def is_triangle(a, b, c)
  return false if a.negative? || b.negative? || c.negative?

  ((a + b - c) * (b + c - a) * (c + a - b)).positive?
end

p is_triangle(0, 1, -2)
