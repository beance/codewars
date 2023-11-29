# frozen_string_literal: true

# Playing with digits
# https://www.codewars.com/kata/5552101f47fc5178b1000050/train/ruby

def dig_pow(n, p)
  sum = n.digits.reverse.each_with_index.sum { |e, i| e**(p + i) }
  (sum % n).zero? ? sum / n : -1
end

# p dig_pow(46_288, 3)
p dig_pow(46_288, 5)
# p dig_pow(92, 1)
