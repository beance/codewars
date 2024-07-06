# frozen_string_literal: true

# Simple Fun #45: New Numeral System
# https://www.codewars.com/kata/5888445107a0d57711000032

ABC_TO_NUM = ("A".."Z").to_a

def new_numeral_system(num)
  num = ABC_TO_NUM.index(num)
  (0..num / 2).map { |n| "#{ABC_TO_NUM[n]} + #{ABC_TO_NUM[num - n]}" }
end

p new_numeral_system("G")
