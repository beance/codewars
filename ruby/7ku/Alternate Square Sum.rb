# frozen_string_literal: true
# Alternate Square Sum
# https://www.codewars.com/kata/559d7951ce5e0da654000073/train/ruby

def alternate_sq_sum(array)
  array.map.with_index { |x, i| i.odd? ? x * x : x }.sum
end

p alternate_sq_sum([11, 12, 13, 14, 15]) # 379
p alternate_sq_sum([1, 0, 2, 0, 3, 0, 4, 0])