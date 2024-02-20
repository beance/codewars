# frozen_string_literal: true

# Unknown amount of duplicates. One missing number.
# https://www.codewars.com/kata/5a5cdb07fd56cbdd3c00005b/train/ruby

def find_dups_miss(arr)
  unknown = arr.uniq.sort.each_cons(2).find { |a, b| a + 1 != b }[0] + 1
  [unknown, arr.tally.select { |_h, v| v > 1 }.keys.sort]
end

arr1 = [10, 9, 8, 9, 6, 1, 2, 4, 3, 2, 5, 5, 3]
p find_dups_miss(arr1)
# [7, [2, 3, 5, 9]]
