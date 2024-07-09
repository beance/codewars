# frozen_string_literal: true
# Check three and two
# https://www.codewars.com/kata/5a9e86705ee396d6be000091/train/ruby


require 'set'
def check_three_and_two(arr)
  arr.uniq.map { |el| arr.count(el) }.sort == [2,3]
end


p check_three_and_two(  ["b", "c", "b", "b", "b"]) # true
p check_three_and_two(["a", "a", "a", "b", "b"])
p check_three_and_two(["a", "c", "a", "c", "b"])