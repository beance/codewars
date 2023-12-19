# frozen_string_literal: true
# Persistent Bugger.
# https://www.codewars.com/kata/55bf01e5a717a0d57e0000ec/train/ruby
#

def persistence(n)
  n.digits.size == 1 ? 0 : 1 + persistence(n.digits.map(&:to_i).reduce(:*))
end

p persistence(444)