# frozen_string_literal: true

# https://www.codewars.com/kata/529e2e1f16cb0fcccb000a6b/train/ruby

def splitInteger(num, parts)
  quotient = num / parts
  remainder = num % parts

  result = Array.new(parts, quotient)

  remainder.times { |i| result[i] += 1 }

  result
end

p splitInteger(20, 6)
