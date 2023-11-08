# frozen_string_literal: true

# Odd or Even?
# https://www.codewars.com/kata/5949481f86420f59480000e7
def odd_or_even(array)
  array.sum.even? ? 'even' : 'odd'
end

p odd_or_even([-1023, 1, -2])
