# frozen_string_literal: true

# Tracking Sums in a Process
# https://www.codewars.com/kata/56dbb6603e5dd6543c00098d

def track_sum(arr)
  arr1 = arr.uniq
  arr2 = arr1.sort.reverse
  arr3 = arr2.each_cons(2).map { |x, y| x - y }
  arr4 = arr3.uniq
  [[arr.sum, arr1.sum, arr3.sum, arr4.sum], arr4]
end

arr = [5, 3, 6, 10, 5, 2, 2, 1]
p track_sum(arr)
# [[34, 27, 9, 7], [4, 1, 2]]
