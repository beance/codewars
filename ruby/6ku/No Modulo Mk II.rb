# frozen_string_literal: true

# No Modulo Mk II
# https://www.codewars.com/kata/54fd8340b58689c43e001061/train/ruby

def no_modulo(dividend, divisor)
  mod = divisor.positive? ? [*0...divisor] : [0, *divisor + 1...0]
  mod.rotate(dividend)[0]
end

p no_modulo(-5, 14)
