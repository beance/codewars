# frozen_string_literal: true
# Decreasing Inputs
# https://www.codewars.com/kata/555de49a04b7d1c13c00000e/train/ruby


def add(*args)
  args.map.with_index { |x, i| x.to_f / (i + 1) }.sum.round
end


p  add(4,-3,-2)