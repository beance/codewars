# frozen_string_literal: true
# https://www.codewars.com/kata/551204b7509063d9ba000b45/train/ruby
def main_diagonal_product(mat)
  (0...mat.size).inject(1) { |res, i| res * mat[i][i] }
end

p main_diagonal_product ([[1, 2, 3], [4, 5, 6], [7, 8, 9]])