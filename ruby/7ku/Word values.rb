# frozen_string_literal: true

# Word values
# https://www.codewars.com/kata/598d91785d4ce3ec4f000018/train/ruby

def wordValue(arr)
  arr.map.with_index(1) { |w, i| w.delete(" ").chars.sum { |c| (c.ord - 96) } * i }
end

p wordValue(["abc abc", "abc abc", "abc", "abc"])
