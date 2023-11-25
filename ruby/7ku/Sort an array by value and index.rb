# frozen_string_literal: true

# https://www.codewars.com/kata/58e0cb3634a3027180000040/train/ruby

def sort_by_value_and_index(arr)
  arr.sort_by.with_index(1) { |x, i| x * i }
end

p sort_by_value_and_index([17, 58, 56, 96, 11, 31, 21, 55, 13, 64, 70, 56, 62, 26, 58, 42, 70, 6, 40, 66, 93, 66, 79])
# p [17, 11, 6, 58, 13, 21, 56, 31, 26, 96, 55, 64, 56, 42, 40, 70, 62, 58, 70, 66, 66, 79, 93]
