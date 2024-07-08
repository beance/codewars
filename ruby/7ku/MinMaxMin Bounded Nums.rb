# frozen_string_literal: true
# MinMaxMin: Bounded Nums
# https://www.codewars.com/kata/58d3487a643a3f6aa20000ff/train/ruby

def min_min_max(array)
  min, max = array.minmax
  [min, ((min..max).to_a - array).min, max]
end

p min_min_max([1, 3, -3, -2, 8, -1])