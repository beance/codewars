# frozen_string_literal: true

# #8 Matrices: Up and Down Sorting For Each Column
# https://www.codewars.com/kata/590b8d5cee471472f40000aa/train/ruby

def up_down_col_sort(m)
  m.flatten.sort.each_slice(m.length).to_a
    .map.with_index { |a, i| i.odd? ? a.reverse : a }.transpose
end

m1 = [[-20, -4, -1],
  [1, 4, 7],
  [8, 10, 12]]
# [[-20, 7, 8],     [-4, 4, 10],     [-1, 1, 12]]
# p up_down_col_sort(m1)

m2 = [[1, -1, 4, 1],
  [7, -20, 12, 0],
  [8, 10, -4, -3]]
p up_down_col_sort(m2)
# [[-20, 1, 1, 12], [-4, 0, 4, 10], [-3, -1, 7, 8]]
