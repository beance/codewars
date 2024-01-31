# frozen_string_literal: true

# Maximum Product
# https://www.codewars.com/kata/5a4138acf28b82aa43000117/train/ruby
def adjacent_element_product(array)
  array.each_cons(2).map { |a, b| a * b }.max
end

p adjacent_element_product([5, 1, 1, 8])
p adjacent_element_product([-23, 4, -5, 99, -27, 329, -2, 7, -921])
