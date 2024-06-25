# frozen_string_literal: true

# Simple Fun #55: Cyclic String
# https://www.codewars.com/kata/58899594b832f80348000122/train/ruby

def cyclic_string(s)
  length_ = s.length
  (1..length_).each do |i|
    return i if (s[0, i] * length_).include?(s)
  end
end

p cyclic_string('cabca') # ,3
p cyclic_string('aba') # 2
p cyclic_string('ccccccccccc') # 1
p cyclic_string('abaca') # 4
