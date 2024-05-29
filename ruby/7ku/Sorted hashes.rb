# frozen_string_literal: true
# Sorted hashes
# https://www.codewars.com/kata/search/ruby?q=&r%5B%5D=-7&tags=Sorting&xids=completed&beta=false&order_by=total_completed%20asc

def solution(array, key)
  array.sort_by { |h| h[key] }
end


p solution([{a: 1}, {a: 5}, {a: 3}], :a)