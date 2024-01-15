# frozen_string_literal: false

# String average
# https://www.codewars.com/kata/5966847f4025872c7d00015b/train/ruby

def average_string(s)
  dig = {"zero" => 0, "one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9}
  return "n/a" if s.empty?
  return "n/a" unless s.split.all? { |i| dig.key?(i) }
  dig.keys[s.split.map { |i| dig[i] }.sum / s.split.length]
end

p average_string("nine one qwm nine five seven zero seven two six one")
