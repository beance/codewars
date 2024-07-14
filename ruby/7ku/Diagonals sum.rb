# frozen_string_literal: true

# Diagonals sum
# https://www.codewars.com/kata/5592fc599a7f40adac0000a8/train/ruby
def sum(arr)
  size = arr.size
  sum = 0

  arr.each_with_index { |row, i| sum += row[i] + row[size - 1 - i] }
  sum
end

p sum([
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]
      ])
