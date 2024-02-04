# frozen_string_literal: true

# Array Info
# https://www.codewars.com/kata/57f12b4d5f2f22651c00256d/train/ruby

def array_info(arr)
  return "Nothing in the array!" if arr.empty?

  length = arr.length
  integer = arr.count { |v| v.is_a?(Integer) }
  integer = nil if integer == 0
  floating_point = arr.count { |v| v.is_a?(Float) || v.is_a?(Rational) }
  floating_point = nil if floating_point == 0
  string = arr.count { |v| v.is_a?(String) && !v.strip.empty? }
  string = nil if string == 0
  whitespace = arr.count(" ")
  whitespace = nil if whitespace == 0

  [[length], [integer], [floating_point], [string], [whitespace]]
end

p array_info([0.001, 2, " "])
