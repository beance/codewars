# frozen_string_literal: true

# Name Array Capping
# https://www.codewars.com/kata/5356ad2cbb858025d800111d/train/ruby

def cap_me(arr)
  arr.map(&:capitalize)
end

p cap_me(%w[jo nelson jurie])
