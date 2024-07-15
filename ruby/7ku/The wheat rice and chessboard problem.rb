# frozen_string_literal: true

# The wheat/rice and chessboard problem
# https://www.codewars.com/kata/5b0d67c1cb35dfa10b0022c7/train/ruby

def squares_needed(grains)
  grains.bit_length
end

p squares_needed(5)
