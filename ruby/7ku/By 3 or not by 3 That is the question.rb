# frozen_string_literal: true
# By 3, or not by 3? That is the question . . .
# https://www.codewars.com/kata/59f7fc109f0e86d705000043/train/ruby

def divisible_by_three(str)
  str.sum % 3 == 0
end

p divisible_by_three("9876543211234567890009") # true
p divisible_by_three("123") # true