# frozen_string_literal: true
# Distance from the average
# https://www.codewars.com/kata/568ff914fc7a40a18500005c/train/ruby

def distances_from_average(arr)
  avg = arr.sum / arr.length.to_f
  arr.map { |n| (avg - n).round(2) }
end

p distances_from_average([55, 95, 62, 36, 48])
# --> [4.2, -35.8, -2.8, 23.2, 11.2]
