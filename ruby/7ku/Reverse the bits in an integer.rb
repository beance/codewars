# frozen_string_literal: true

# Reverse the bits in an integer
# https://www.codewars.com/kata/5959ec605595565f5c00002b/train/ruby

class Integer
  def reverse
    to_s(2).reverse.to_i(2)
  end
end

p 417.reverse
