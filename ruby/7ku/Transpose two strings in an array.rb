# frozen_string_literal: true
# Transpose two strings in an array
# https://www.codewars.com/kata/581f4ac139dc423f04000b99/train/ruby

def transpose_two_strings(arr)
  a, b = arr.map(&:chars)
  max_length = [a.length, b.length].max
  result = []

  (0...max_length).each do |i|
    char_a = a[i] || ' '
    char_b = b[i] || ' '
    result << "#{char_a} #{char_b}" unless char_a.strip.empty? && char_b.strip.empty?
  end

  result.join("\n")
end

p transpose_two_strings(["a", "cat"])
#"H W\ne o\nl r\nl l\no d"
