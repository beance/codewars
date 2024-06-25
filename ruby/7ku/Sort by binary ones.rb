# frozen_string_literal: true

# Sort by binary ones
# https://www.codewars.com/kata/59eb28fb0a2bffafbb0000d6/train/ruby

def sort_by_binary_ones(arr)
  arr.sort_by { |num| [-num.to_s(2).count('1'), num.to_s(2).length, num] }
end

p sort_by_binary_ones([1, 3])
p sort_by_binary_ones([1, 2, 3, 4]) # [3, 1, 2, 4]
