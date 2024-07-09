# frozen_string_literal: true
# Array element parity
# https://www.codewars.com/kata/5a092d9e46d843b9db000064/train/ruby

def solve(arr)
  arr.uniq.sum
end

p solve([-3,1,2,3,-1,-4,-2])
p solve([1,-1,2,-2,3,3])