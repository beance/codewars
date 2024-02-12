# frozen_string_literal: true

# Binary to Text (ASCII) Conversion
# https://www.codewars.com/kata/5583d268479559400d000064/train/ruby

def binary_to_string(binary)
  return "" if binary.empty?
  res = ""
  binary.chars.each_slice(8) { |i| res += i.join.to_i(2).chr }
  res
end

def binary_to_string(binary)
  [binary].pack("B*")
end

p binary_to_string("01001000")
