# frozen_string_literal: true

# Delta Bits
# https://www.codewars.com/kata/538948d4daea7dc4d200023f/train/ruby
#
def convertBits(a, b)
  (a ^ b).to_s(2).count('1')
end

# p convertBits(31, 14)
p convertBits(7, 17)
