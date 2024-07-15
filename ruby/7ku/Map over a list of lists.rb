# frozen_string_literal: true

# Map over a list of lists
# https://www.codewars.com/kata/606b43f4adea6e00425dff42/train/ruby

def grid_map(inp, &block)
  inp.map { |element| element.map(&block) }
end

p grid_map([[1, 2, 3], [4, 5, 6]]) { |n| n + 1 }
