# frozen_string_literal: true
# Find the unique number
# https://www.codewars.com/kata/585d7d5adb20cf33cb000235/train/ruby

def find_uniq(arr)
  arr.uniq.detect { |i| arr.count(i) == 1 }
end

p find_uniq([0, 0, 0.55, 0, 0])