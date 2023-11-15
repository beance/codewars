# frozen_string_literal: true

# https://www.codewars.com/kata/56af6e4198909ab73200013f/train/ruby

require 'prime'

def valid_mersenne(n)
  mersenne_number = 2 ** n - 1
  prime?(mersenne_number)
end



p valid_mersenne(127)



