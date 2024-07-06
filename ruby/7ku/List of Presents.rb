# frozen_string_literal: true

# List of Presents
# https://www.codewars.com/kata/5a84d485742ba347b90006b7/train/ruby

def how_many_gifts(max_budget, gifts)
  gifts.sort.take_while { |i| (max_budget -= i) >= 0 }.length
end

p how_many_gifts(20, [13, 2, 4, 6, 1])
