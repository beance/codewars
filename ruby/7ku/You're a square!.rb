# frozen_string_literal: true

# You're a square!
# https://www.codewars.com/kata/54c27a33fb7da0db0100040e

def is_square(x)
  x.negative? ? false : (Math.sqrt(x) % 1).zero?
end

p is_square(-1)
