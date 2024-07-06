# frozen_string_literal: true

# Simple Fun #246: Array Center
# https://www.codewars.com/kata/590bdaa251ab8267b800005b/train/ruby
#
def array_center(arr)
  min = arr.min
  avg = arr.sum / arr.length.to_f

  arr.select { |n| (n - avg).abs < min }
end

p array_center [8, 3, 4, 5, 2, 8]
# p array_center [1, 3, 2, 1]
