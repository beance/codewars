# frozen_string_literal: true
# Least Larger
# https://www.codewars.com/kata/5f8341f6d030dc002a69d7e4/train/ruby

def least_larger(a, i)
  a.find_index(a.select { |x| x > a[i] }.min) || -1
end

p least_larger([4, 1, 3, 5, 6], 0)