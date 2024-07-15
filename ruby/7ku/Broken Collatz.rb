# frozen_string_literal: true

# Broken Collatz
# https://www.codewars.com/kata/57e8c68c97a05990b10000c3/train/ruby

def collatz(n, count = 1)
  return count if n == 1

  n = n.even? ? n / 2 : n * 3 + 1
  collatz(n, count + 1)
end

p collatz(4)
