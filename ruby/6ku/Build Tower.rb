# frozen_string_literal: true

# Build Tower
# https://www.codewars.com/kata/576757b1df89ecf5bd00073b/train/ruby

def towerBuilder(n)
  (1..n).map { |i| " " * (n - i) + "*" * (2 * i - 1) + " " * (n - i) }
end

p towerBuilder(3)
