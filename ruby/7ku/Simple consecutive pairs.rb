# frozen_string_literal: true

# Simple consecutive pairs
# https://www.codewars.com/kata/5a3e1319b6486ac96f000049/train/ruby
#

def pairs(arr)
  arr.each_slice(2).map { |a, b| b.nil? ? nil : (a - b).abs }.count(1)
end

def pairs(arr)
  arr.each_slice(2).count { |a, b = a| (a - b).abs == 1 }
end

p pairs([1, 2, 5, 8, -4, -3, 7, 6, 5])
