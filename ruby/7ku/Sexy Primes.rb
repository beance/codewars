# frozen_string_literal: true

# https://www.codewars.com/kata/56b58d11e3a3a7cade000792/train/ruby

require 'prime'
def sexy_prime(x, y)
  (x.prime? && y.prime?) && (y - x == 6 || x - y == 6) ? true : false
end

p sexy_prime(11, 5)
