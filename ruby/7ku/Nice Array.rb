# frozen_string_literal: true
# Nice Array
# https://www.codewars.com/kata/59b844528bcb7735560000a0/train/ruby

def isNice(arr)
  return false if arr.empty?

  arr.all? { |v| arr.include?(v + 1) || arr.include?(v - 1) }
end

p isNice([0, 2, 19, 4, 4]) # false
p isNice([3, 2, 1, 0]) # true