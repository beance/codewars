# frozen_string_literal: true
# Matrix creation
# https://www.codewars.com/kata/5a34da5dee1aae516d00004a/train/ruby

def get_matrix(n)
  (0...n).map { |x| (0...n).map { |y| x == y ? 1 : 0 } }
end

p get_matrix(5)