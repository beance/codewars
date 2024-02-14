# frozen_string_literal: true

# Multiples of Ten in a Sequence Which Values Climb Up
# https://www.codewars.com/kata/561d54055e399e2f62000045/train/ruby

# def find_mult10_SF(n)
#   s1 = ->(x) { 1 + 2**x + 3**x }
#   s2 = ->(x) { 1 + 2**x + 4**x }
#   s3 = ->(x) { 1 + 2**x + 3**x + 4**x + 5**x + 6**x }
#   st = ->(x) { s3[x] - s2[x] - s1[x] }
#   sf = ->(x) { (st[x + 1] - 5 * st[x] - 4) / 4 }
#
#   i = 1
#   k = 0
#   result = nil
#
#   while k < n
#     s = sf[i]
#     i += 1
#
#     if s % 10 == 0
#       k += 1
#       result = s
#     end
#   end
#
#   result
# end

def find_mult10_SF(n)
  (6**(n = 4 * n - 1) + 3 * 2**n) >> 2
end
# Test cases
# puts find_mult10_SF(1)  # Output: 60
# puts find_mult10_SF(2)  # Output: 70080
puts find_mult10_SF(300) # Output: 90700800
