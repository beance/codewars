# frozen_string_literal: true

# Largest Elements
# https://www.codewars.com/kata/53d32bea2f2a21f666000256/train/ruby

def largest(n, xs)
  xs.max(n).sort
end

p largest(2, [7, 6, 5, 4, 3, 2, 1])
