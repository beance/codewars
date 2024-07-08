# frozen_string_literal: true
# Sum of Array Averages
# https://www.codewars.com/kata/56d5166ec87df55dbe000063/train/ruby
#
def sum_average(arr)
  arr.map { |a| a.sum / a.length.to_f }.sum.floor
end


p sum_average([[1, 2, 2, 1], [2, 2, 2, 1]]) # 3
p sum_average([[52, 64, 84, 21, 54], [44, 87, 46, 90, 43]]) # 117