# frozen_string_literal: true

# Count the divisors of a number
# https://www.codewars.com/kata/542c0f198e077084c0000c2e/train/ruby

def divisors(n)
  return 1 if n == 1
  count = 2
  i = 2
  while i**2 < n
    count += 2 if n % i == 0
    i += 1
  end
  count += 1 if i**2 == n
  count
end



p divisors(1)
