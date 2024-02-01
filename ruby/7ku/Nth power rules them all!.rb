# frozen_string_literal: true
# Nth power rules them all!
# https://www.codewars.com/kata/58aed2cafab8faca1d000e20/train/ruby


def modified_sum(nums, n)
  nums.sum { |num| num**n } - nums.sum
end

p modified_sum([1, 2, 3], 3)