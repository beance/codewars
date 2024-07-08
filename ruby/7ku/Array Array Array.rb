# frozen_string_literal: true
# Array Array Array
# https://www.codewars.com/kata/57eb936de1051801d500008a/train/ruby

def explode(arr)
  return "Void!" if arr[0].is_a?(String) && arr[1].is_a?(String)

  (0...arr.map(&:to_i).sum).map { |x| arr }
end

p explode([9, 3]) == [[9, 3], [9, 3], [9, 3], [9, 3], [9, 3], [9, 3], [9, 3], [9, 3], [9, 3], [9, 3], [9, 3], [9, 3]]
p explode([6, "a"])