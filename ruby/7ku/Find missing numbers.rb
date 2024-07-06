# frozen_string_literal: true
# Find missing numbers
# https://www.codewars.com/kata/56d02e6cc6c8b49c510005bb/train/ruby

def find_missing_numbers(arr)
  return [] if arr.empty?
  (arr.min..arr.max).to_a - arr
end


p find_missing_numbers([-3,-2,1,5])