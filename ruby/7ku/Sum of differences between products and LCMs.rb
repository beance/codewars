# frozen_string_literal: true
# Sum of differences between products and LCMs
# https://www.codewars.com/kata/56e56756404bb1c950000992/train/ruby

def sum_differences_between_products_and_LCMs(pairs)
  pairs.sum { |a, b| a * b - a.lcm(b) }
end

p sum_differences_between_products_and_LCMs [[15, 18], [4, 5], [12, 60]]