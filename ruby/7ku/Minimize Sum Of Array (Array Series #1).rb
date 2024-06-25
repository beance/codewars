# frozen_string_literal: true

# Minimize Sum Of Array (Array Series #1)
# https://www.codewars.com/kata/5a523566b3bfa84c2e00010b/train/ruby

def min_sum(arr)
  left, right = arr.sort.partition.with_index { |_, i| i.even? }
  left.zip(right.reverse).sum { |a, b| a * b }
end

p min_sum([12, 6, 10, 26, 3, 24])
p min_sum([9, 2, 8, 7, 5, 4, 0, 6])
