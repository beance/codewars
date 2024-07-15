# frozen_string_literal: true

# Convert Integer to Binary
# https://www.codewars.com/kata/55606aeebf1f0305f900006f/train/ruby

def to_binary(n)
  (n & 0xFFFFFFFF).to_s(2)
end

p to_binary(-3)
