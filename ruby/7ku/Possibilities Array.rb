# frozen_string_literal: true
# Possibilities Array
# https://www.codewars.com/kata/59b710ed70a3b7dd8f000027/train/ruby
#

def is_all_possibilities(arr)
  arr.sort == [*0..arr.length-1]
end


p is_all_possibilities([0,2,19,4,4]) # false
p is_all_possibilities([3,2,1,0]) # true
