# frozen_string_literal: true

# #1 Matrices : Making an Alternating Sum
# https://www.codewars.com/kata/5720eb05e8d6c5b24a0014c5/train/ruby

def score_matrix(matrix)
  score = 0

  matrix.each_with_index do |e, j|
    if j.even?
      e.each_with_index { |v, i| i.even? ? score += v : score -= v }
    else
      e.each_with_index { |v, i| i.odd? ? score += v : score -= v }
    end
  end
  score
end

def score_matrix(matrix)
  m, n = matrix.size, matrix[0].size
  score = 0
  m.times do |i|
    n.times do |j|
      score += (-1)**(i + j) * matrix[i][j]
    end
  end
  score
end

matrix = [[1, 2, 3, 4], [-3, -2, 1, 1], [3, 8, -1, 2], [20, 5, 10, -4],
  [10, -8, -8, 4]]

p score_matrix(matrix)
