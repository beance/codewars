# frozen_string_literal: true
# Squares sequence
# https://www.codewars.com/kata/5546180ca783b6d2d5000062


def squares(x, n)
  return [] if n <= 0

  result = [x]
  (n - 1).times { result << result.last**2 }
  result
end

def squares(x, n)
  (0...n).map{|i| x ** (2 ** i)}
end

p squares(3,3) #== [3,9,81]