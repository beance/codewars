# frozen_string_literal: true

# Simple Fun #10: Range Bit Counting
# https://www.codewars.com/kata/58845748bd5733f1b300001f/train/ruby

def range_bit_count(a, b)
  (a..b).sum { |i| i.to_s(2).count("1") }
end

p range_bit_count(2, 7)
