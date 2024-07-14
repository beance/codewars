# frozen_string_literal: true

# Principal Diagonal | VS | Secondary Diagonal
# https://www.codewars.com/kata/5a8c1b06fd5777d4c00000dd/train/ruby
#
def diagonal(matrix)
  size = matrix.size
  pd = 0
  sd = 0

  matrix.each_with_index do |row, i|
    pd += row[i]
    sd += row[size - 1 - i]
  end

  case pd <=> sd
  when -1
    'Secondary Diagonal win!'
  when 1
    'Principal Diagonal win!'
  else
    'Draw!'
  end
end

p diagonal([[1, 2, 3],
            [4, 5, 6],
            [7, 8, 9]])
