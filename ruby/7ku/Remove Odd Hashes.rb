# frozen_string_literal: true

# Remove Odd Hashes
# https://www.codewars.com/kata/521d8d1a123ebb5a8900008a/train/ruby

def remove_odd_hashes(array, key_1, key_2)
  array.reject { |h| (h[key_1] + h[key_2]).odd? }
end

p remove_odd_hashes(
  [{ a: 5, b: 5 },
   { a: 3, b: 4 },
   { a: 2, b: 0 },
   { a: 2, b: 1 }],
  :a, :b
)
