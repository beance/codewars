# frozen_string_literal: true
# Product Of Maximums Of Array (Array Series #2)
# https://www.codewars.com/kata/5a63948acadebff56f000018/train/ruby

def max_product(numbers, size)
  numbers.sort[-size..-1].inject(:*)
end

p max_product([10,2,3,8,1,10,4], 5) # 9600