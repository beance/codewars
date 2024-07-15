# frozen_string_literal: true

# Python Checkerboard
# https://www.codewars.com/kata/57785441311a24465e000025/train/ruby

def make_checkered_board(n)
  board = Array.new(n) { Array.new(n) }

  n.times do |i|
    n.times do |j|
      board[i][j] = (i + j).even? ? 'X' : 'O'
    end
  end
  board
end

p make_checkered_board(5)
