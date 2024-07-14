# frozen_string_literal: true

# Centered pentagonal number:
# https://www.codewars.com/kata/5fb856190d5230001d48d721/train/ruby

def pentagonal(n)
  return -1 if n <= 0

  (5 * n * n - 5 * n + 2) / 2
end

p pentagonal 8
