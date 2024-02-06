# frozen_string_literal: true

# Odd March Bits 8 bits
# https://www.codewars.com/kata/58ee4db3e479611e6f000086/train/ruby

def bit_march(n)
  res = []
  (9 - n).times do |i|
    res << ("1" * n).rjust(8 - i, "0").ljust(8, "0").chars.map(&:to_i)
  end
  res
end

def bit_march(n)
  (0...9 - n).map { |i| [0] * (8 - n - i) + [1] * n + [0] * i }
end

p bit_march(7)
