# frozen_string_literal: true

# https://www.codewars.com/kata/5467e4d82edf8bbf40000155
# Descending Order

def descending_order(n)
  n.to_s.chars.sort.reverse.join.to_i
end
