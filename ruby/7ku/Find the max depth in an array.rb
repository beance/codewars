# frozen_string_literal: true

# Find the max depth in an array
# https://www.codewars.com/kata/540f550ebfd623e28b000cd3/train/ruby

class Array
  def depth
    if empty?
      1
    else
      map { |e| e.is_a?(Array) ? e.depth + 1 : 1 }.max
    end
  end
end

# array = [1, [2, [3, [4], 3]]]
array = []
p array.depth
