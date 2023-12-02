# frozen_string_literal: true

# Get Smallest Common Factor
# https://www.codewars.com/kata/5933af2db328fbc731000010/train/ruby

require 'prime'

def scf(arr)
  arr.reduce(:gcd).prime_division[0][0]
rescue StandardError
  1
end

# p scf([200, 30, 18, 8, 64, 34])
# p scf([21, 45, 51, 27, 33])
p scf([])
p scf([288, 960, 240, 384, 192, 672, 816, 720, 816, 672, 480, 96, 816, 192, 384, 288, 240, 192, 192, 96, 624])
