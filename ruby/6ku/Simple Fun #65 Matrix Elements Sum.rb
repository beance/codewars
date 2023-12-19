# frozen_string_literal: false

# Simple Fun #65: Matrix Elements Sum
# https://www.codewars.com/kata/5893eb36779ce5faab0000da/train/ruby
require "set"

def matrix_elements_sum(matrix)
  total_price = 0
  rows = matrix.length
  cols = matrix[0].length
  haunted = Set.new

  (0...rows).each do |row|
    (0...cols).each do |col|
      if matrix[row][col] == 0
        haunted.add(col)
      elsif !haunted.include?(col)
        total_price += matrix[row][col]
      end
    end
  end
  total_price
end

#######
# def matrix_elements_sum(matrix)
#   matrix.transpose.sum { |r| r.take_while(&:nonzero?).sum }
# end

matrix = [
  [0, 1, 1, 2],
  [0, 5, 0, 0],
  [2, 0, 3, 3]
]
p matrix_elements_sum(matrix) # 9
