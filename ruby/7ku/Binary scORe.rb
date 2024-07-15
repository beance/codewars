# frozen_string_literal: true

# Binary scORe
# https://www.codewars.com/kata/56cafdabc8cfcc3ad4000a2b/train/ruby

def score(n)
  (2**n.bit_length) - 1
end

p score(0)
