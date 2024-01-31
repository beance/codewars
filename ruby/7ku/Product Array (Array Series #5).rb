# frozen_string_literal: true

# Product Array (Array Series #5)
# https://www.codewars.com/kata/5a905c2157c562994900009d/train/ruby

def product_array(numbers)
  numbers.map.with_index do |x, i|
    numbers.reject.with_index { |n, j| j == i }.reduce(:*)
  end
end

def product_array(numbers)
  numbers.map { |x| numbers.reduce(:*) / x }
end

p product_array([98, 47, 4, 4, 2])
[1504, 3136, 36848, 36848, 73696]
