# frozen_string_literal: true

# Closest to Zero
# https://www.codewars.com/kata/59887207635904314100007b

def closest(arr)
  closest = arr.min_by(&:abs)
  closest unless arr.uniq.count { |num| num.abs == closest.abs } > 1
end

# p closest([2, 4, -1, -3])
# p closest([5, 2, -2])
p closest([5, 11, 11, 2, -1, 1])
# p closest([5, 2, -2])
