# frozen_string_literal: true

# Eliminate the intruders! Bit manipulation
# https://www.codewars.com/kata/5a0d38c9697598b67a000041/train/ruby

def eliminate_set_bits(number)
  (1 << number.count('1')) - 1
end

p eliminate_set_bits('10011')
