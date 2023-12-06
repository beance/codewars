# frozen_string_literal: true

# Simple Fun #204: Smallest Integer
# https://www.codewars.com/kata/58fd96a59a9f65c2e900008d/train/ruby
#
def smallest_integer(matrix)
  smallest = 0
  smallest += 1 while matrix.flatten.include?(smallest)
  smallest
end

p smallest_integer([
                     [4, 5, 3, 21, 3, 8],
                     [2, 2, 6, 5, 10, 9],
                     [7, 5, 6, 8, 2, 6],
                     [1, 4, 7, 8, 9, 0],
                     [1, 3, 6, 5, 5, 1],
                     [2, 7, 3, 4, 4, 3]
                   ]) # 11

p smallest_integer([
                     [4, 5, 3, -4, 3, 8],
                     [2, 0, 6, 5, 4, 9],
                     [7, 5, 6, 8, 2, 6],
                     [1, 4, 7, 8, 9, 11],
                     [1, 3, 10, 5, 5, 1],
                     [12, 7, 3, 4, 4, 3]
                   ])

p smallest_integer([
                     [1, 2],
                     [3, 4]
                   ])
