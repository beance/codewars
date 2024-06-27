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

# Examples
# puts last_digit_to_appear(2)    # Output: 7
# puts last_digit_to_appear(8)    # Output: 7
# puts last_digit_to_appear(10)   # Output: 9
# puts last_digit_to_appear(12)   # Output: 7
# puts last_digit_to_appear(9999) # Output: 5 (example, actual can vary)

p last_digit_to_appear(1)



