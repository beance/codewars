# frozen_string_literal: true

# Shared Bit Counter
# https://www.codewars.com/kata/58a5aeb893b79949eb0000f1/train/ruby
def shared_bits(a, b)
  (a & b).to_s(2).count('1') >= 2
end

p shared_bits(2, 3)
