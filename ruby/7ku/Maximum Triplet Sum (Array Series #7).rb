# frozen_string_literal: true
# Maximum Triplet Sum (Array Series #7)
# https://www.codewars.com/kata/5aa1bcda373c2eb596000112/train/ruby

def max_tri_sum(numbers)
  numbers.uniq.max(3).sum
end

p max_tri_sum([3,2,6,8,2,3])
p max_tri_sum([2,1,8,0,6,4,8,6,2,4])