# frozen_string_literal: true

# Get the Sum of Multiples of Triangular Numbers
# https://www.codewars.com/kata/566afbfc8595f2e751000040

def sum_mult_triangnum(n, m)
  triangular = (1..n).map { |i| (i * (i + 1)) / 2 }
  l = triangular.reduce(1) { |acc, val| acc.lcm(val) }
  (m * (m + 1) * l) / 2
end

p sum_mult_triangnum(10, 15) # 1663200
