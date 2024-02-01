# frozen_string_literal: true
# Especially Joyful Numbers
# https://www.codewars.com/kata/570523c146edc287a50014b1/train/ruby


def number_joy(n)
  sum = n.digits.sum
  sum * sum.to_s.reverse.to_i == n
end

p number_joy(1729)