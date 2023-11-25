# frozen_string_literal: true
# ASCII letters from Number
# https://www.codewars.com/kata/589ebcb9926baae92e000001/train/ruby
def convert(number)
  result = ''
  number.chars.each_slice(2) { |i| result += i.join.to_i.chr }
  result
end

p convert("676584") #"CAT"


# def convert(num)
#   num.scan(/../).map {|n| n.to_i.chr}.join
# end