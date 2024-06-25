# frozen_string_literal: true

# Operations With Sets
# https://www.codewars.com/kata/5609fd5b44e602b2ff00003a/train/ruby

def process_2arrays(arr1, arr2)
  a = arr1 & arr2
  b = (arr1 - a) + (arr2 - a)
  c = arr1 - a
  d = arr2 - a
  [a.length, b.length, c.length, d.length]
end

# require "set"
#
# def process_2arrays(arr1, arr2)
#   first, second = arr1.to_set, arr2.to_set
#   [first & second, first ^ second, first - second, second - first].map(&:length)
# end

arr1 = [33, 2, 3, 37, 38, 40, 12, 10, 43, 44, 47, 49, 8, 19, 22, 24, 26, 28, 29, 30]
arr2 = [1, 34, 17, 7, 9, 10, 43, 49, 22, 27, 28]

# arr1 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
# arr2 = [2, 4, 6, 8, 10, 12, 14]
p process_2arrays(arr1, arr2)
# [5, 21, 15, 6]
