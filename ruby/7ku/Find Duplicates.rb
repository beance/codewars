# frozen_string_literal: true

# Find Duplicates
# https://www.codewars.com/kata/5558cc216a7a231ac9000022/train/ruby

def duplicates(arr)
  result_hash = {}
  result_array = []
  arr.each { |num| result_hash[num].nil? ? result_hash[num] = 1 : result_hash[num] += 1 }
  result_hash.each { |k, v| result_array.push(k) if v > 1 }
  result_array
end

p duplicates([1, 2, 4, 4, 3, 3, 1, 5, 3, '5']) # [1, 3, 4])
