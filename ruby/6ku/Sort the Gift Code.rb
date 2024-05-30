# frozen_string_literal: true
# Sort the Gift Code
# https://www.codewars.com/kata/52aeb2f3ad0e952f560005d3/train/ruby

def sort_gift_code code
  code.chars.sort.join
end


p   sort_gift_code('pqksuvy')  #'kpqsuvy'