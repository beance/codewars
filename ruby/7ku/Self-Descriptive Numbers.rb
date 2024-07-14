# frozen_string_literal: true

# Self-Descriptive Numbers
# https://www.codewars.com/kata/56a628758f8d06b59800000f/train/ruby
def self_descriptive(num)
  digits = num.digits.reverse
  digits.each_with_index do |digit, index|
    return false if digit != digits.count(index)
  end
  true
end

p self_descriptive(21_200)
