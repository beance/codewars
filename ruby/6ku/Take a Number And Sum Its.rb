# frozen_string_literal: true

# Take a Number And Sum Its Digits Raised To The Consecutive Powers And ....¡Eureka!!
# https://www.codewars.com/kata/5626b561280a42ecc50000d1/train/ruby

def sum_dig_pow(a, b)
  (a..b).select do |n|
    n.digits.each_with_index.sum { |e, i| e**(i + 1) } == n
  end
end

p sum_dig_pow(3, 200)
