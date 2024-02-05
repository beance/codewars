# frozen_string_literal: true
# Array Manipulation
# https://www.codewars.com/kata/58d5e6c114286c8594000027/train/ruby

def array_manip(array)
  array.map.with_index do |x, i|
    array[i + 1..-1].select { |y| x < y }.compact.min || -1
  end
end


p array_manip([8, 58, 71, 18, 31, 32, 63, 92, 43, 3, 91, 93, 25, 80, 28])
#             [18, 63, 80, 25, 32, 43, 80, 93, 80, 25, 93, -1, 28, -1, -1]
