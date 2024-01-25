# frozen_string_literal: true

# Array2Binary addition
# https://www.codewars.com/kata/559576d984d6962f8c00003c

def arr2bin(arr)
  arr.reduce(0, :+).to_s(2)
rescue StandardError
  false
end

p arr2bin([1, 2.0])
