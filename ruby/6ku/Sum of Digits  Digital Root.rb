# frozen_string_literal: true

# https://www.codewars.com/kata/541c8630095125aba6000c00/train/ruby
def digital_root(n)
  result = n.digits.sum
  result.digits.size != 1 ? digital_root(result) : result
end

p digital_root(7)
