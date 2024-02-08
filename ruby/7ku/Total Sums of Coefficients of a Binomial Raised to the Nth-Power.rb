# frozen_string_literal: true

# Total Sums of Coefficients of a Binomial Raised to the Nth-Power
# https://www.codewars.com/kata/584a6d9d7d22f8fa09000094/train/ruby

def f(n)
  (0..n).map { |i| 2**i } << 2**(n + 1) - 1
end

def binomial_coeff_sum(n)
  c = Array.new(n + 2) { Array.new(n + 2, 0) }

  (0..n).each do |i|
    (0..[i, n].min).each do |j|
      c[i][j] = j == 0 || j == i ? 1 : c[i - 1][j - 1] + c[i - 1][j]
    end
  end

  c[n].sum
end


p f(1000) # [1, 2, 4, 7]
