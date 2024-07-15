# frozen_string_literal: true

# Sum of a nested list
# https://www.codewars.com/kata/5a15a4db06d5b6d33c000018/train/ruby
def sum_nested(lst)
  lst.flatten.sum
end

p sum_nested([1, [2, [3, [4]]]])
