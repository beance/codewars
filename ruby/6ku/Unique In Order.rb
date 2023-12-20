# frozen_string_literal: true

# Unique In Order
# https://www.codewars.com/kata/54e6533c92449cc251001667/train/ruby

def unique_in_order(iterable)
  iterable = iterable.chars if iterable.is_a?(String)
  iterable.chunk(&:itself).map(&:first)
end

p unique_in_order("AAAABBBCCDAABBB") #== ['A', 'B', 'C', 'D', 'A', 'B']
p unique_in_order([1,2,2,3,3]) #== ['A', 'B', 'C', 'D', 'A', 'B']
