# frozen_string_literal: true

# JavaScript Array Filter
# https://www.codewars.com/kata/514a6336889283a3d2000001/train/ruby
def get_even_numbers(arr)
  arr.select(&:even?)
end

p get_even_numbers([2, 4, 5, 6]) #=> [2,4,6]
