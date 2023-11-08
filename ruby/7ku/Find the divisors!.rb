# frozen_string_literal: true

# Find the divisors!
# https://www.codewars.com/kata/544aed4c4a30184e960010f4
require 'prime'
def divisors(n)
  if Prime.prime?(n)
    "#{n} is prime"
  else
    (2...n).select { |i| (n % i).zero? }
  end
end

p divisors(12)
