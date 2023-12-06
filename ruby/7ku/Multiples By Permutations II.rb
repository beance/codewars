# frozen_string_literal: true

# Multiples By Permutations II
# https://www.codewars.com/kata/5ba178be875de960a6000187/train/ruby

def find_lowest_int(k)
  n = 1
  loop do
    return n if (n * k).digits.sort == (n * (k + 1)).digits.sort

    n += 1
  end
end

p find_lowest_int(10_000)
