# frozen_string_literal: true

# What dominates your array?
# https://www.codewars.com/kata/559e10e2e162b69f750000b4/train/ruby

def dominator(arr)
  arr.find { |i| arr.count(i) > arr.size / 2 } || -1
end

p dominator([1, 2, 3, 4, 5])
p dominator([1, 1, 1, 2, 2, 2])
p dominator([10, 8, 6, 9, 7, 4, 1, 10, 4])
