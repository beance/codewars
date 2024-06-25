# frozen_string_literal: true

# Sort rectangles and circles by area II
# https://www.codewars.com/kata/5a1ebc2480171f29cf0000e5/train/ruby

def sort_by_area(a)
  a.sort_by { |x| x.is_a?(Array) ? x[0] * x[1] : x**2 * Math::PI }
end

p sort_by_area([[4.23, 6.43], 1.23, 3.444, [1.342, 3.212]]) # [[1.342, 3.212], 1.23, [4.23, 6.43], 3.444]
