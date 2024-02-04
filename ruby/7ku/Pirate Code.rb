# frozen_string_literal: true

# Pirate Code
# https://www.codewars.com/kata/59e77930233243a7b7000026/train/ruby

def amaro_plan(pirate_num)
  res = Array.new(pirate_num) { |i| i.odd? ? 0 : 1 }
  res[0] = pirate_num * 20 - (res.sum - 1)
  res
end

def amaro_plan(n)
  [(n * 20) - ((n - 1) / 2), *[0, 1].cycle.take(n - 1)]
end

p amaro_plan(3)
