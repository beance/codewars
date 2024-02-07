# frozen_string_literal: true

# Transforming Chess Piece Puzzle
# https://www.codewars.com/kata/635d9b5c8f20017aa1cf2cf6/train/ruby

def transforming_chess(starting_piece, starting_row, starting_column)
  case starting_piece
  when "r"
    return "win" if starting_row.even? || starting_column.even?
    "draw"

  when "b"
    return "win" if starting_row == starting_column || starting_row + starting_column == 4
    return "lose" if (starting_row == 2 && [0, 4].include?(starting_column)) ||
      ([0, 4].include?(starting_row) && starting_column == 2)
    "draw"

  when "q"
    return "draw" if (starting_row == 2 && [1, 3].include?(starting_column)) ||
      ([1, 3].include?(starting_row) && starting_column == 2)
    "win"
  end
end
starting_piece2, starting_row2, starting_col2 = "b", 0, 1
p transforming_chess(starting_piece2, starting_row2, starting_col2)
p determine_outcome(starting_piece2, starting_row2, starting_col2)
