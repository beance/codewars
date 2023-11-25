# frozen_string_literal: true

# https://www.codewars.com/kata/57ad85bb7cb1f3ae7c000039/train/ruby
def numbers_with_digit_inside(x, d)
  count = 0
  sum = 0
  mult = 0

  (1..x).each do |i|
    next unless i.digits.include?(d)

    count += 1
    sum += i
    mult = 1 if mult.zero?
    mult *= i
  end

  [count, sum, mult]
end

p numbers_with_digit_inside(44, 4)
