# frozen_string_literal: true
# Two Sum
# https://www.codewars.com/kata/52c31f8e6605bcc646000082/train/ruby
#
def two_sum(nums, target)
  nums.each_with_index do |num, i|
    nums.each_with_index do |num2, j|
      return [i, j] if num + num2 == target && i != j
    end
  end
end

p two_sum([1234, 5678, 9012], 14690)