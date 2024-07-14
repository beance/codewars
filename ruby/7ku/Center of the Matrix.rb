# frozen_string_literal: true

# Center of the Matrix
# https://www.codewars.com/kata/54c91b5228ec4c3b5900036e/train/ruby

def center(mat)
  return nil if mat.size.even? || mat[0].size.even?

  x = (mat.size / 2.0).floor
  y = (mat[0].size / 2.0).floor
  mat[x][y]
end


def center (mat)
  l = mat.flatten.length
  l.odd? ? mat.flatten[l/2] : nil
end

p center [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

p center([[1, 2, 3], [4, 5, 6]])
p center (
           [
             [5, 1, 3],
             [6, 2, 6],
             [7, 4, 5],
             [10, 12, 12],
             [14, 0, 0]]

         )