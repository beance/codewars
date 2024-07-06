# frozen_string_literal: true
# Difference between biggest 2 numbers
# https://www.codewars.com/kata/55e3f27d5dee52d8dd0000a9/train/ruby

def diff_big_2(arr)
  arr.max(2).inject(:-)
end

p  diff_big_2([10, 5, 2])