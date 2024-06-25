# frozen_string_literal: true

# Sorting the Odd way!
# https://www.codewars.com/kata/57fb79784e2d0639c9000066/train/ruby
#
def sort_it_out(array)
  left, right = array.partition { |x| x.floor.odd? }
  left.sort + right.sort.reverse
end

# p sort_it_out([1,2,3,4,5,6,7,8,9])
# p sort_it_out([19,65,88,112,60,14,33,49,88])
p sort_it_out([26, 243, 52, 2, 432_414, 1, 11, 46, 32])
# [1,11,243,432414,52,46,32,26,2],"[26,243,52,2,432414,1,11,46,32]"
