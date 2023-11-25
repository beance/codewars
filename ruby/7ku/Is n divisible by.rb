# frozen_string_literal: true

# https://www.codewars.com/kata/558ee8415872565824000007/train/ruby

def is_divisible(*arr)
  arr[1..-1].reject { |i| (arr[0] % i).zero? }.empty?
end

p is_divisible(12, 3, 4)

p is_divisible(8, 3, 4, 2, 5)
