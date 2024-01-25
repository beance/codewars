# frozen_string_literal: false

# Basic Math (Add or Subtract)
# https://www.codewars.com/kata/5809b62808ad92e31b000031/train/ruby
#

def calculate(str)
  eval(str.gsub('plus', '+').gsub('minus', '-')).to_s
end

p calculate('1plus2plus3plus4') # --> "10"
