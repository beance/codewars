# frozen_string_literal: true

# https://www.codewars.com/kata/5a4e3782880385ba68000018/train/ruby

def balanced_num(number)
  digits = number.digits
  length = digits.size

  if length.even?
    left_sum = digits[0...length / 2 - 1].sum
    right_sum = digits.reverse[0...length / 2 - 1].sum
  else
    left_sum = digits[0...length / 2].sum
    right_sum = digits.reverse[0...length / 2].sum
  end

  left_sum == right_sum ? 'Balanced' : 'Not Balanced'
end

# Example tests
# puts balanced_num(56239814) # Output: Balanced
puts balanced_num(14) # Output: Balanced
# puts balanced_num(959) # Output: Not Balanced
# puts balanced_num(1024)  # Output: Balanced

# def balanced_num(num)
#   n = num.digits
#   s = n.size
#   l = s.even? ? s / 2 - 1 : s / 2
#   n.first(l).sum == n.last(l).sum ? 'Balanced' : 'Not Balanced'
# end
