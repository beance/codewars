# frozen_string_literal: true

# Simple Fun #145: Table Game
# https://www.codewars.com/kata/58aa7f18821a769a7d000190/train/ruby

def table_game(table)
  res = [table[0][0], table[0][2], table[2][0], table[2][2]]
  if [table[0][1], table[2][1]].sum == table[1][1] && [table[1][0], table[1][2]].sum == table[1][1] && table[1][1] == res.sum
    res
  else
    [-1]
  end
end

p table_game([
  [1, 4, 2],
  [5, 10, 5],
  [4, 7, 3]
]) # ,[-1])
