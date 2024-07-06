# frozen_string_literal: true
# Subcuboids
# https://www.codewars.com/kata/5b9e29dc1d5ed219910000a7/train/ruby

def subcuboids(x, y, z)
  (x * (x + 1) / 2) * (y * (y + 1) / 2) * (z * (z + 1) / 2)
end
