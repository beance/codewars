# frozen_string_literal: true

# Sort odd and even numbers in different order
# https://www.codewars.com/kata/5a1cb5406975987dd9000028/train/ruby

def sort_array(arr)
  return [] if arr.empty?
  odd_numbers = arr.select(&:odd?).sort
  even_numbers = arr.select(&:even?).sort.reverse
  arr.map { |num| (num.odd? ? odd_numbers.shift : even_numbers.shift) }
end

p sort_array([5, 3, 2, 8, 1, 4])
