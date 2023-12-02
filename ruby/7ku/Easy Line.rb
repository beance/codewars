# frozen_string_literal: true

# Easy Line
# https://www.codewars.com/kata/56e7d40129035aed6c000632/train/ruby
#

def easyline(n)
  factorial(2 * n) / (factorial(n) * factorial(n))
end

def factorial(n)
  return 1 if n.zero?

  (1..n).inject(:*)
end

p easyline 19

# or
def easyline(n)
  n.zero? ? 1 : easyline(n - 1) * (4 * n - 2) / n
end
