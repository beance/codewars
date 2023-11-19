# frozen_string_literal: true

# https://www.codewars.com/kata/55b22ef242ad87345c0000b2/train/ruby

def choose(n, k)
  k.zero? ? 1 : choose(n - 1, k - 1) * n / k
end

p choose(10, 4)
