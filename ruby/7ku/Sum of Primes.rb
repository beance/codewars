# frozen_string_literal: true

# https://www.codewars.com/kata/5902ea9b378a92a990000016/train/ruby
require 'prime'

def sum_primes(lower, upper)
  (lower..upper).select(&:prime?).sum
end

p sum_primes(4, 20)
