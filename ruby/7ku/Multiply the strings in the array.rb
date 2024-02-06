# frozen_string_literal: true
# Multiply the strings in the array
# https://www.codewars.com/kata/59b2963132779166d2001018/train/ruby

def arrMultiply(arr)
  arr.map(&:to_i).reduce(:*).to_s
end

p arrMultiply(['4','5'])