# frozen_string_literal: true

# Divided We Stand
# https://www.codewars.com/kata/54471405a58191b95900042f/train/ruby

def count_divisors(a, b)
  (1..b).map { |i| [i, a / i] }.to_h
end

p count_divisors(1000, 25)
