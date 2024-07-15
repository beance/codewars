# frozen_string_literal: true

# Binary sXORe
# https://www.codewars.com/kata/56d3e702fc231fdf72001779/train/ruby
def sxore(n)
  case n % 4
  when 0
    n
  when 1
    1
  when 2
    n + 1
  when 3
    0
  end
end

p sxore(50)
