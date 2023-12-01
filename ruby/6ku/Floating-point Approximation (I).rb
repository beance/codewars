# frozen_string_literal: true

# Floating-point Approximation (I)
# https://www.codewars.com/kata/58184387d14fc32f2b0012b2/train/ruby

def f(x)
  x / (Math.sqrt(1 + x) + 1)
end

p f(2.6e-08)
