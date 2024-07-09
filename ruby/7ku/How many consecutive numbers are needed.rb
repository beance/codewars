# frozen_string_literal: true

# How many consecutive numbers are needed?
# https://www.codewars.com/kata/559cc2d2b802a5c94700000c/train/ruby
def consecutive(arr)
  return 0 if arr.size < 1

  ((arr.min..arr.max).to_a - arr).count
end

p consecutive([4, 8, 6])
