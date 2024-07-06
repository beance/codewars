# Knight position
# https://www.codewars.com/kata/5b5736abf1d553f844000050/train/ruby

def possible_positions(str)
  x = str[0].ord - "a".ord
  y = str[1].to_i - 1

  moves = [
    [2, 1], [1, 2], [-1, 2], [-2, 1],
    [-2, -1], [-1, -2], [1, -2], [2, -1]
  ]

  new_positions = moves.map { |dx, dy| [x + dx, y + dy] }
  new_positions.select! { |nx, ny| nx.between?(0, 7) && ny.between?(0, 7) }
  result = new_positions.map { |nx, ny| (nx + "a".ord).chr + (ny + 1).to_s }
  result.sort
end

p possible_positions("a1")
