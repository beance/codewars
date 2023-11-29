# frozen_string_literal: true

# Highest Rank Number in an Array
# https://www.codewars.com/kata/5420fc9bb5b2c7fd57000004/train/ruby


def highest_rank(arr)
  counts = arr.each_with_object(Hash.new(0)) { |num, hash| hash[num] += 1 }

  max_count = counts.values.max
  most_frequent_numbers = counts.select { |_k, v| v == max_count }.keys

  most_frequent_numbers.max
end

# or
def highest_rank(arr)
  arr.group_by(&:itself).max_by { |k, v| [v.size, k] } [0]
end


p highest_rank([12, 10, 8, 8, 3, 3, 3, 3, 2, 4, 10, 12, 10])
