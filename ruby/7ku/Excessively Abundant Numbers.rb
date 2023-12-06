# frozen_string_literal: true

# Excessively Abundant Numbers
# https://www.codewars.com/kata/56a75b91688b49ad94000015/train/ruby

def abundant_number?(num)
  return false if num < 12

  sum_of_divisors = 1

  (2..Math.sqrt(num)).each do |i|
    if (num % i).zero?
      sum_of_divisors += i
      sum_of_divisors += (num / i) unless i == (num / i)
    end
  end

  sum_of_divisors > num
end

p abundant_number?(11690)
