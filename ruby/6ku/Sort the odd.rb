# frozen_string_literal: true

# Sort the odd
# https://www.codewars.com/kata/578aa45ee9fd15ff4600090d/train/ruby
#

def sort_array(source_array)
  odd_numbers = source_array.select(&:odd?).sort
  source_array.map { |num| num.odd? ? odd_numbers.shift : num }
end

p sort_array [5, 3, 2, 8, 1, 4, 11]
# [1, 3, 2, 8, 5, 4, 11]