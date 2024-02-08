# frozen_string_literal: true

# Simple Fun #324: Is John Lying?
# https://www.codewars.com/kata/594cd799c08247a55a000004/train/ruby

def is_john_lying(a, b, s)
  c = (a.abs + b.abs).abs
  c % 2 == s % 2 && s >= c
end

p is_john_lying(3, 3, 6)
