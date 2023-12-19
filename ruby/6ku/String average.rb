# frozen_string_literal: true

# String average
# https://www.codewars.com/kata/5966847f4025872c7d00015b/train/ruby

def average_string(s)
  dig = {"zero" => 0,"one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9}
  return "n/a" unless dig.keys.any? { |i| s.include?(i) }
  dig.keys[s.split.map { |i| dig[i] }.sum / s.split.length]
end

p average_string("zero nine five two")
