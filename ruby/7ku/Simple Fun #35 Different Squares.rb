# frozen_string_literal: true

# Simple Fun #35: Different Squares
# https://www.codewars.com/kata/588805ca44c7e8c3a100013c/train/ruby

def different_squares(matrix)
  arr = []
  (0...matrix.length - 1).each do |row|
    (0...matrix[row].length - 1).each do |col|
      arr << [
        matrix[row][col], matrix[row][col + 1],
        matrix[row + 1][col], matrix[row + 1][col + 1]
      ]
    end
  end

  arr.uniq.length
end

def different_squares(matrix)
  matrix.each_cons(2).flat_map { |a| a.transpose.each_cons(2).to_a }.uniq.count
end

matrix = [
  [1, 2, 1],
  [2, 2, 2],
  [2, 2, 2],
  [1, 2, 3],
  [2, 2, 1]
]

p different_squares(matrix)
