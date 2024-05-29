# frozen_string_literal: true

# Find factors of a number
# https://www.codewars.com/kata/564fa92d1639fbefae00009d/train/ruby

def factors(x)
  return -1 unless x.is_a?(Integer)
  return -1 if x <= 0
  (1..x).select { |n| x % n == 0 }.reverse
end

p factors(54)
