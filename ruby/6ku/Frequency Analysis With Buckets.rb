# frozen_string_literal: true

# Frequency Analysis With Buckets
# https://www.codewars.com/kata/5ac95cb05624bac42e000005/train/ruby
#

def bucketize(arr)
  result = Array.new(arr.length.succ)
  counts = arr.each_with_object(Hash.new(0)) { |num, hash| hash[num] += 1 }
  arr.length.succ.times do |i|
    a = counts.select { |_key, value| value == i }.keys
    result[i] = a.sort unless a.empty?
  end
  result
end

p bucketize([1, 2, 3, 4, 4, 5, 5, 5]) == [nil, [1, 2, 3], [4], [5], nil, nil, nil, nil, nil]
# p bucketize([2,2,4,4,6,6,9,9,9,9])
# [nil, nil, [2,4,6], nil, [9], nil, nil, nil, nil, nil, nil];
