# frozen_string_literal: true

# Sum of Cubes
# https://www.codewars.com/kata/59a8570b570190d313000037/train/ruby

def sum_cubes(n)
  ((n * (n + 1)) / 2)**2
end

p sum_cubes(12)
