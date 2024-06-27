# frozen_string_literal: true
# Simple Fun #105: Rectangles
# https://www.codewars.com/kata/589a8d9b729e7abd9a0000ed/train/ruby

def rectangles(n, m)
  (m - 1) * m * (n - 1) * n / 4
end

p rectangles(3, 3)