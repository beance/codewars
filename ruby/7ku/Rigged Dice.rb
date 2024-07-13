# frozen_string_literal: true

# Rigged Dice
# https://www.codewars.com/kata/573acc8cffc3d13f61000533/train/ruby

def throw_rigged
  rand < 0.22 ? 6 : rand(1...6)
end

p throw_rigged
