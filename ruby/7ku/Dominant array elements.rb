# frozen_string_literal: true
# Dominant array elements
# https://www.codewars.com/kata/5a04133e32b8b998dc000089/train/ruby



def solve(arr)
  arr.select.with_index{|n, i| arr[i..-1].max == n }.uniq
end

p solve([16,17,14,3,14,5,2])