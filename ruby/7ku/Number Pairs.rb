# frozen_string_literal: true

# Number Pairs
# https://www.codewars.com/kata/563b1f55a5f2079dc100008a/train/ruby
def get_larger_numbers(a, b)
  a.zip(b).map(&:max)
end

arr1 = [13, 64, 15, 17, 88]
arr2 = [23, 14, 53, 17, 80]
p get_larger_numbers(arr1, arr2) == [23, 64, 53, 17, 88]
