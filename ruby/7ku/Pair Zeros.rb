# frozen_string_literal: true
# Pair Zeros
# https://www.codewars.com/kata/54e2213f13d73eb9de0006d2

def pair_zeros(arr)
  zero_count = 0

  arr.map do |v|
    if v == 0
      zero_count += 1
      next if zero_count.even?
    end
    v
  end.compact
end


