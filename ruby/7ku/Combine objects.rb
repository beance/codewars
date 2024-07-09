# frozen_string_literal: true

# Combine objects
# https://www.codewars.com/kata/56bd9e4b0d0b64eaf5000819/train/ruby
def combine(*arg)
  arg.each_with_object(Hash.new(0)) { |hash, result| hash.each { |key, value| result[key] += value } }
end

objA = { 'a' => 10, 'b' => 20, 'c' => 30 }
objB = { 'a' => 3, 'c' => 6, 'd' => 3 }
p combine(objA, objB)
