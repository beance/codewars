# frozen_string_literal: true

# Summation Triangle #1
# https://www.codewars.com/kata/6357825a00fba284e0189798/train/ruby
#

def get_sum(n)
  (n + 1) * (n + 2) * (4 * n + 3) / 6
end

p get_sum 3
