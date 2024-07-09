# frozen_string_literal: true
# Is every value in the array an array?
# https://www.codewars.com/kata/582c81d982a0a65424000201/train/ruby
def arrCheck(value)
  value.all? {|e| e.is_a?(Array)}
end

