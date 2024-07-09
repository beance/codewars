# frozen_string_literal: true

# Looking for a benefactor
# https://www.codewars.com/kata/569b5cec755dd3534d00000f/train/ruby

def new_avg(arr, newavg)
  sum = arr.reduce(0) { |acc, x| newavg - x + acc } + newavg
  raise ArgumentError, 'Expected New Average is too low' if sum <= 0

  sum.ceil
end

p new_avg([14, 30, 5, 7, 9, 11, 16], 90)
