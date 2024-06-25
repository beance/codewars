# frozen_string_literal: true

# sum2total
# https://www.codewars.com/kata/559fed8454b12433ff0000a2/train/ruby
def total(arr)
  return arr.first if arr.size < 2

  total(arr.each_cons(2).to_a.map { |a, b| a + b })
end

p total([1, 2, 3, 4, 5])
