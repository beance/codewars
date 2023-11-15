# frozen_string_literal: true

# https://www.codewars.com/kata/5b2f6ad842b27ea689000082/train/ruby

require 'prime'

def is_smooth(n)
  prime_factors = n.prime_division.map(&:first)
  highest_prime = prime_factors.max

  case highest_prime
  when 2
    'power of 2'
  when 3
    '3-smooth'
  when 5
    'Hamming number'
  when 7
    'humble number'
  else
    'non-smooth'
  end
end
