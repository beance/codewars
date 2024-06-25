# frozen_string_literal: true

# Number of Rectangles in a Grid
# https://www.codewars.com/kata/556cebcf7c58da564a000045/train/ruby

def number_of_rectangles(m, n)
  (m * (m + 1) * n * (n + 1)) / 4
end

p number_of_rectangles(4, 4)
