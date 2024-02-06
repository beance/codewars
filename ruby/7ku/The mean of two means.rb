# frozen_string_literal: true

# The mean of two means
# https://www.codewars.com/kata/583df40bf30065fa9900010c/train/ruby

def get_mean(arr, x, y)
  return -1 if arr.length < y || arr.length < x || x <= 1 || y <= 1
  first_mean = arr.first(x).sum / x.to_f
  second_mean = arr.last(y).sum / y.to_f
  (first_mean + second_mean) / 2
end

p get_mean([1, 3, 2, 4], 2, 3)
