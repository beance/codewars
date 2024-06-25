# frozen_string_literal: true

# Sort and Transform
# https://www.codewars.com/kata/57cc847e58a06b1492000264/train/ruby

def sort_transform(arr)
  res = arr.map(&:chr)
  one = res.first(2) + res.last(2)
  two = res.sort.first(2) + res.sort.last(2)
  "#{one.join}-#{two.join}-#{two.reverse.join}-#{two.join}"
end

p sort_transform [111, 112, 113, 114, 115, 113, 114, 110]
p sort_transform [66, 101, 55, 111, 113]
