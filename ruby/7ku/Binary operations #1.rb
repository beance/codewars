# frozen_string_literal: true

# Binary operations #1
# https://www.codewars.com/kata/560e80734267381a270000a2/train/ruby

def flip_bit(value, bit_index)
  value ^ 1 << (bit_index - 1)
end

p flip_bit(0, 16)
