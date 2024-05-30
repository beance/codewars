# frozen_string_literal: true
# Product of Largest Pair
# https://www.codewars.com/kata/5784c89be5553370e000061b/train/ruby

def max_product(a)
  a.max(2).inject(:*)
end

p max_product([56, 335, 195, 443, 6, 494, 252])