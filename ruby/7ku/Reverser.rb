# frozen_string_literal: true

# Reverser
# https://www.codewars.com/kata/58069e4cf3c13ef3a6000168/train/ruby

def reverser(number)
  number.digits.join.to_i
end

p reverser(1234)
