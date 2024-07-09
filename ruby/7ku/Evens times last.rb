# frozen_string_literal: true
# Evens times last
# https://www.codewars.com/kata/5a1a9e5032b8b98477000004/train/ruby

def even_last(numbers)
  return 0 if numbers.empty?
  numbers.select.with_index { |num, i| i.even?  }.sum * numbers.last
end


p even_last([2, 3, 4, 5])