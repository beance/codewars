# frozen_string_literal: true

# How many are smaller than me?
# https://www.codewars.com/kata/56a1c074f87bc2201200002e/train/ruby

def smaller(arr)
  arr.map.with_index { |e, i| arr[i + 1..].count { |x| x < e } }
end

p smaller([5, 4, 3, 2, 1])
