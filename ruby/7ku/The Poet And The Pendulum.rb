# frozen_string_literal: true
# The Poet And The Pendulum
# https://www.codewars.com/kata/5bd776533a7e2720c40000e5/train/ruby

def pendulum values
  left, right = values.sort.partition.with_index { |_, i| i.even? }
  left.reverse + right
end

p pendulum([9, 4, 6, 4, 10, 5]) # [9, 5, 4, 4, 6, 10]