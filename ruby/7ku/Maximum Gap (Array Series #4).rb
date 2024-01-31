# frozen_string_literal: true
# Maximum Gap (Array Series #4)
# https://www.codewars.com/kata/5a7893ef0025e9eb50000013/train/ruby
#

def max_gap(numbers)
  numbers.sort.each_cons(2).map { |a, b| b - a }.max
end


p max_gap([24,299,131,14,26,25]) #168