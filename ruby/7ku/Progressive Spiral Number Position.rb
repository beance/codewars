# frozen_string_literal: true

# Progressive Spiral Number Position
# https://www.codewars.com/kata/5a254114e1ce0ecf6a000168/train/ruby

def layers(n)
  Math.sqrt(n).ceil / 2 + 1
end

p layers(30)
