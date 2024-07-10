# frozen_string_literal: true

# Flatten
# https://www.codewars.com/kata/5250a89b1625e5decd000413/train/ruby

def flatten(array)
  array.flatten(1)
end
p flatten [[[1, 2, 3]]]
p flatten [[1, 2, 3], %w[a b c], [1, 2, 3]]
p flatten([[3, 4, 5], [[9, 9, 9]], ['a,b,c']])
# [3, 4, 5, [9, 9, 9], "a,b,c"]
