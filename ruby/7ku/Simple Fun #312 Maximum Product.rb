# frozen_string_literal: true

# Simple Fun #312: Maximum Product
# https://www.codewars.com/kata/592e2446dc403b132d0000be/train/ruby
#

def maximum_product(arr)
  arr.max_by.with_index { |n, i| [(arr[0...i] + arr[i + 1..-1]).reduce(&:*), -n] }
end

p maximum_product([1, 2, 3])
p maximum_product([-1, 2, -3])
