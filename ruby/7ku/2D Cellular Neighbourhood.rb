# frozen_string_literal: true

# 2D Cellular Neighbourhood
# https://www.codewars.com/kata/5b2e5a02a454c82fb9000048/train/ruby

def get_neighbourhood(n_type, arr, coordinates)
  y, x = coordinates
  return [] if arr[y].nil? || arr[y][x].nil?

  neighbourhood = if n_type == "moore"
    [[y - 1, x - 1], [y - 1, x], [y - 1, x + 1], [y, x - 1], [y, x + 1], [y + 1, x - 1], [y + 1, x], [y + 1, x + 1]]
  else
    [[y, x - 1], [y, x + 1], [y - 1, x], [y + 1, x]]
  end
  valid_neighbours = neighbourhood.select do |coord|
    coord[0] >= 0 && coord[1] >= 0 && arr[coord[0]] && arr[coord[0]][coord[1]]
  end
  valid_neighbours.map { |coord| arr[coord[0]][coord[1]] }.sort
end

def get_neighbourhood(n_type, arr, (y, x))
  return [] if arr.empty?
  return [] if y >= arr.size || x >= arr[0].size

  [].tap do |result|
    too_deep = (y + 1) >= arr.size

    result << arr[y][x - 1] unless x.zero?
    result << arr[y][x + 1]
    result << arr[y - 1][x] unless y.zero?
    result << arr[y + 1][x] unless too_deep

    if n_type == "moore"
      result << arr[y - 1][x - 1] unless x.zero? || y.zero?
      result << arr[y - 1][x + 1] unless y.zero?
      result << arr[y + 1][x - 1] unless x.zero? || too_deep
      result << arr[y + 1][x + 1] unless too_deep
    end
  end.compact
end

arr = [[0, 1, 2, 3, 4],
  [5, 6, 7, 8, 9],
  [10, 11, 12, 13, 14],
  [15, 16, 17, 18, 19],
  [20, 21, 22, 23, 24]]

# p get_neighbourhood('moore', arr, [1, 1])
p get_neighbourhood("von_neumann", arr, [0, 0])
# [1, 5, 7, 11]
