# frozen_string_literal: true
# Sum of array singles
# https://www.codewars.com/kata/59f11118a5e129e591000134/train/ruby

def repeats(arr)
  arr.group_by { |i| arr.count(i) }[1].sum
end

p repeats([4, 5, 7, 5, 4, 8]) # 15