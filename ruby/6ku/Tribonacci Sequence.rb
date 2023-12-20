# frozen_string_literal: true

# Tribonacci Sequence
# https://www.codewars.com/kata/556deca17c58da83c00002db/train/ruby
#

def tribonacci(signature, n)
  return signature.take(n) if n <= 3
  (n - 3).times do
    signature << signature[-3..-1].reduce(:+)
  end
  signature
end

# p tribonacci([1, 1, 1], 10)
# p tribonacci([0, 0, 1], 10)
# p tribonacci([0, 1, 1], 10)
# p tribonacci([1, 0, 0], 10)
# p tribonacci([0, 0, 0], 10)
# p tribonacci([1, 2, 3], 10)
# p tribonacci([3, 2, 1], 10)
p tribonacci([1, 1, 1], 1)
p tribonacci([300, 200, 100], 0)
p tribonacci([0.5, 0.5, 0.5], 30)
