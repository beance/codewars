# frozen_string_literal: true
# Adding values of arrays in a shifted way
# https://www.codewars.com/kata/57c7231c484cf9e6ac000090/train/ruby

def adding_shifted(array_of_arrays, shift)
  end_array_length = array_of_arrays[0].length + shift * (array_of_arrays.length - 1)
  result = Array.new(end_array_length, 0)

  array_of_arrays.each_with_index do |array, i|
    array.each_with_index do |num, j|
      result[j + shift * i] += num
    end
  end

  result
end


p  adding_shifted([[1,2,3,4,5,6], [7,7,7,-7,7,7], [1,1,1,1,1,1]], 3 )