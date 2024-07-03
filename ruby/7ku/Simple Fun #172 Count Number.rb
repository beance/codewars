# frozen_string_literal: true
# Simple Fun #172: Count Number
# https://www.codewars.com/kata/58b635903e78b34958000056/train/ruby

def count_number(n, x)
  (1..n).count { |i| x % i == 0 && x / i <= n }
end


p count_number(10,5)