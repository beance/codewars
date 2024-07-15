# frozen_string_literal: true

# Reduce My Fraction
# https://www.codewars.com/kata/576400f2f716ca816d001614/train/ruby

def reduce(fraction)
  gcd = fraction[0].gcd(fraction[1])
  [fraction[0] / gcd, fraction[1] / gcd]
end

p reduce([60, 20])
