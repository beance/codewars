# frozen_string_literal: true

# Describe the shape
# https://www.codewars.com/kata/59a1ea8b70e25ef8e3002992/train/ruby

def describe_the_shape(angles)
  return 'this will be a line segment or a dot' if angles <= 2

  "This shape has #{angles} sides and each angle measures #{(angles - 2) * 180 / angles}"
end

p describe_the_shape(90)
