# frozen_string_literal: true

# Square Pi's
# https://www.codewars.com/kata/5cd12646cf44af0020c727dd/train/ruby

PI_DIGITS_SQUARED = '31415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679'.chars.map do |d|
  d.to_i**2
end

def square_pi(digits)
  (PI_DIGITS_SQUARED.first(digits).sum**0.5).ceil
end

p square_pi(3)
