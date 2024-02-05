# frozen_string_literal: true

# From-To-Step Sequence Generator
# https://www.codewars.com/kata/56459c0df289d97bd7000083/train/ruby

def generator(from, to, step)
  return [] if step == 0
  to < from ? step = -step : step
  from.step(to, step).to_a
end

p generator(10, 20, 5)
p generator(10, 20, 7)
p generator(20, 10, 1)
