# frozen_string_literal: true

# Powers of i
# https://www.codewars.com/kata/5a97387e5ee396e70a00016d/train/ruby

def pofi(n)
  %w[1 i -1 -i][n % 4]
end

p pofi 1
