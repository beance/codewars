# frozen_string_literal: true
# Minimum and Maximum Product of k Elements
# https://www.codewars.com/kata/5afd81d0de4c7f45f4000239/train/ruby




def find_min_max_product(arr, k)
  return nil if arr.size < k
  arr.combination(k).map { |e| e.reduce(:*) }.minmax
end

arr = [1, -2, -3, 4, 6, 7]
k = 3
p find_min_max_product(arr, k)