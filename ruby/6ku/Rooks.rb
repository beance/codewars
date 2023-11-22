# frozen_string_literal: true

# https://www.codewars.com/kata/5bc2c8e230031558900000b5/train/ruby

def rooks(n, k)
  return 1 if k.zero?
  return 0 if k > n * n

  sum = 1
  i = n
  while i > n - k
    sum *= i
    i -= 1
  end

  i = 1
  while i <= k
    sum /= i
    i += 1
  end
  i = n
  while i > n - k
    sum *= i
    i -= 1
  end

  sum
end

p rooks(14, 5)
