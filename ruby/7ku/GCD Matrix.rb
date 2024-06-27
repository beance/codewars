# frozen_string_literal: true

# GCD Matrix
# https://www.codewars.com/kata/58a30be22d5b6ca8d9000012/train/ruby

def gcd_matrix(a, b)
  sum, count = 0, 0
  a.product(b).each do |x, y|
    sum += x.gcd(y)
    count += 1
  end
  (sum.to_f / count).round(3)
end

p gcd_matrix([1, 2, 3], [4, 5, 6]) # 1.444

p gcd_matrix([5, 5, 5], [10, 10, 10]) # 5.0
