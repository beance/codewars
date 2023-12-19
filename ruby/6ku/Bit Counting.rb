# frozen_string_literal: true

# Bit Counting
# https://www.codewars.com/kata/526571aae218b8ee490006f4

def count_bits(n)
  n.to_s(2).chars.map(&:to_i).sum
end
