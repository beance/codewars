# frozen_string_literal: true

# Simple Fun #137: S2N
# https://www.codewars.com/kata/58a6742c14b042a042000038/train/ruby

def s2n(m, n)
  (0..m).sum { |i| (0..n).sum { |j| i**j } }
end

p s2n(2, 3)
