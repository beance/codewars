# frozen_string_literal: true

# Map function issue
# https://www.codewars.com/kata/560fbc2d636966b21e00009e/train/ruby

func = ->(x) { x.to_i.even? }

def map(arr, somefunction)
  return 'given argument is not a function' unless somefunction.respond_to?(:call)

  arr.each { |i| return 'array should contain only numbers' if i.is_a?(Integer) == false && i.to_i.zero? }
  arr.map(&somefunction)
end

p map([1, 2, 3, '8'], func)
# p map([77, 84, 18, 43, 16, 70, 53], func)
# p map([ 1, 96, 37, 60, 7 ],'test')
# p map([72, 12, 30, 'q'], func)
