# frozen_string_literal: true

# Simple Fun #8: Kill K-th Bit
# https://www.codewars.com/kata/58844f1a76933b1cd0000023/train/ruby
def kill_kth_bit(n, k)
  n & ~(1 << k - 1)
end

p kill_kth_bit(1_001_215_509, 31)
