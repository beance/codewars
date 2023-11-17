# frozen_string_literal: true
# https://www.codewars.com/kata/525f50e3b73515a6db000b83/train/ruby



def create_phone_number(numbers)
  "(#{numbers[0..2].join}) #{numbers[3..5].join}-#{numbers[6..-1].join}"
end


def create_phone_number(array)
  '(%d%d%d) %d%d%d-%d%d%d%d' % array
end

p create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # => returns "(123) 456-7890"