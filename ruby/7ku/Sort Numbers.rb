# frozen_string_literal: true

# Sort Numbers
# https://www.codewars.com/kata/5174a4c0f2769dd8b1000003/train/ruby

def solution(nums)
  return [] if nums.nil? || nums.empty?

  nums.sort
end

p solution([1, 2, 10, 50, 5])
