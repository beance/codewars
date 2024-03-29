# frozen_string_literal: true

# Triangular Treasure
# https://www.codewars.com/kata/525e5a1cb735154b320002c8/train/ruby

def triangular(n)
  n.negative? ? 0 : (n * n + n) / 2
end
