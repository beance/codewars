# frozen_string_literal: true

# Single digit
# https://www.codewars.com/kata/5a7778790136a132a00000c1/train/ruby

def single_digit(n)
  return n unless n > 9

  result = n.to_s(2).count('1')
  single_digit(result)
end

p single_digit(5)
