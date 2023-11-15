# frozen_string_literal: true

# https://www.codewars.com/kata/5a9996fa8e503f2b4a002e7a/train/ruby

require 'prime'
def odd_not_prime(num)
  (1..num).select { |i| i.odd? && !Prime.prime?(i) }.size
end

p odd_not_prime(15)
