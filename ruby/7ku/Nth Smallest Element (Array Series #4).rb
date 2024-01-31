# frozen_string_literal: true
# Nth Smallest Element (Array Series #4)
# https://www.codewars.com/kata/5a512f6a80eba857280000fc/train/ruby
#

def nth_smallest(arr, pos)
  arr.sort[pos - 1]
end

p nth_smallest([15,20,7,10,4,3],3)