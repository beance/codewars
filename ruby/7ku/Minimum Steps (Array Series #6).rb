# frozen_string_literal: true
# Minimum Steps (Array Series #6)
# https://www.codewars.com/kata/5a91a7c5fd8c061367000002

def minimum_steps(numbers, value)
  numbers.sort.inject([0]) { |acc, x| acc + [acc.last + x] }.find_index { |sum| sum >= value } - 1
end

def minimum_steps(numbers, value)
  numbers.sort.take_while { |n| (value -= n) > 0 }.count
end

p minimum_steps([8,9,10,4,2], 23)
p minimum_steps([4,6,3], 7)