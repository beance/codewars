# frozen_string_literal: true

# Find the middle element
# https://www.codewars.com/kata/545a4c5a61aa4c6916000755/train/ruby
#

def gimme(input_array)
  input_array.index(input_array.sort[1])
end

p gimme([-15, -10, 14])
