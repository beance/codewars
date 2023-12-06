# frozen_string_literal: true

# Simple Fun #34: Numbers Grouping
# https://www.codewars.com/kata/588711735ea0b4649e000001/train/ruby

def numbers_grouping(a)
  groups = Array.new(100, 0)
  a.each do |num|
    group_num = (num - 1) / 10**4
    groups[group_num] += 1
  end
  groups.count(&:positive?) + groups.sum
end

p numbers_grouping([20_000, 239, 10_001, 999_999, 10_000, 20_566, 29_999])
