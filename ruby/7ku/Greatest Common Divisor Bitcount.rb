# frozen_string_literal: true

# Greatest Common Divisor Bitcount
# https://www.codewars.com/kata/54b45c37041df0caf800020f/train/ruby

def BinaryGCD(x, y)
  x.gcd(y).to_s(2).count('1')
end

p BinaryGCD(45, 300)
p BinaryGCD(100000, 10000000)
