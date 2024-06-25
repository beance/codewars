# frozen_string_literal: true

# Find Count of Most Frequent Item in an Array
# https://www.codewars.com/kata/56582133c932d8239900002e/train/ruby

def most_frequent_item_count(collection)
  collection.each_with_object(Hash.new(0)) { |i, h| h[i] += 1 }.max_by { |_k, v| v }&.last || 0
end

p most_frequent_item_count([3, -9, 5, -4, 1, 0, 2, 0, 1, -7, -4, -5, -6, 5, -2, -5, 7, 1, 4, 5, 4, 7, -2, 7, -2, 2, 0,
                            -10, -1, 1, 4, -2, 8, -2, 7, 2, 0, -1, 0, 9, -7, -3, -9, 1, -3, 4, 4, 10, 7, -8, -5, -3, 7, 8, -10, 9, 4, -10, 2, -4, -10, -9, -4, 6, -5, -10, 10, 1, -6, 9, 2, -8, 1, -7, 8, -4, 8, -3, 1, -5, -2, -1, -8, 8, 4, -8, 5, -10, -5, 6, 9, -7, -6, 1, 3, 4])
