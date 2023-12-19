# frozen_string_literal: true

# Shortest steps to a number
# https://www.codewars.com/kata/5cd4aec6abc7260028dcd942/train/ruby

require "prime"

def shortest_steps_to_num(num)
  count = 0
  while num > 1
    num % 2 == 0 ? num /= 2 : num -= 1
    count += 1
  end
  count
end

p shortest_steps_to_num(16)
