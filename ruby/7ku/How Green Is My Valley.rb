# frozen_string_literal: true

# How Green Is My Valley?
# https://www.codewars.com/kata/56e3cd1d93c3d940e50006a4/train/ruby

def make_valley(arr)
  arr_rev = arr.sort.reverse
  left, right = arr_rev.partition.with_index { |_, i| i.even? }
  left + right.reverse
end

p make_valley([17, 17, 15, 14, 8, 7, 7, 5, 4, 4, 1]) # [17, 15, 8, 7, 4, 1, 4, 5, 7, 14, 17]
