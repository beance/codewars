# frozen_string_literal: true
# Find the missing letter
# https://www.codewars.com/kata/5839edaa6754d6fec10000a2/train/ruby
#
def find_missing_letter(array)
  ((array[0]..array[-1]).to_a - array)[0]
end

p find_missing_letter(["a","b","c","d","f"])

