# frozen_string_literal: true

# Find sum of top-left to bottom-right diagonals
# https://www.codewars.com/kata/5497a3c181dd7291ce000700/train/ruby

def diagonal_sum(array)
  array.map.with_index { |a, i| a[i] }.sum
end

p diagonal_sum([[1, 2, 3], [4, 5, 6], [7, 8, 9]]) # 15
