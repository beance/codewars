# frozen_string_literal: true

# Orthogonal Vectors
# https://www.codewars.com/kata/53670c5867e9f2222f000225/train/ruby

def orthogonal?(vecA, vecB)
  vecA.zip(vecB).sum { |x, y| x * y }.zero?
end

p orthogonal?([1, 1, 1], [2, 5, 7])
