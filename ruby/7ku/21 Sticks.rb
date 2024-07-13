# frozen_string_literal: true

# 21 Sticks
# https://www.codewars.com/kata/5866a58b9cbc02c4f8000cac/train/ruby

def make_move(sticks)
  remainder = sticks % 4
  remainder == 0 ? 3 : remainder
end
