# frozen_string_literal: true

# Last Digit to Appear in Sequence of Powers
# https://www.codewars.com/kata/5ccfcfad7306d900269da53f/train/ruby

require "set"
def last_digit_to_appear(n)
  return nil if ((n*n).digits.to_set - n.digits.to_set).empty?
  a = Set.new
  i = 1
  while a.size != 10
    (n**i).digits.reverse_each { |x| a.add x }
    i += 1
  end

  a.to_a.last
end



p last_digit_to_appear(99)



