# frozen_string_literal: true

# Convert an array of strings to array of numbers
# https://www.codewars.com/kata/5783d8f3202c0e486c001d23/train/ruby

def to_number_array(string_array)
  string_array.map(&:to_f)
end

p to_number_array(['1.1', '2.2', '3.3']) # [1.1,2.2,3.3]
