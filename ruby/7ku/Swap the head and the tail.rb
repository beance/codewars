# frozen_string_literal: true

# Swap the head and the tail
# https://www.codewars.com/kata/5a34f087c5e28462d9000082/train/ruby

def swap_head_tail(arr)
  length = arr.length
  right, left = arr.partition.with_index { |_v, i| i < length / 2 }
  arr.length.odd? ? [left[1..-1], left[0], right].flatten : [left, right].flatten
end

p swap_head_tail([1, 2, 3, 4, 5])
# p swap_head_tail([ -1, 2 ])
