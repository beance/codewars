# frozen_string_literal: true
# Power of two
# https://www.codewars.com/kata/534d0a229345375d520006a0/train/ruby

def power_of_two?(x)
  x > 0 && (x & (x - 1)).zero?
end

p power_of_two?(4096)