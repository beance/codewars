# frozen_string_literal: true

# Find The Duplicated Number in a Consecutive Unsorted List
# https://www.codewars.com/kata/558dd9a1b3f79dc88e000001/train/ruby
def find_dup(arr)
  arr.select { |e| arr.count(e) > 1 }[0]
end

p find_dup([5, 4, 3, 2, 1, 1])
p find_dup([1, 3, 2, 5, 4, 5, 7, 6])
