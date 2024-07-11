# frozen_string_literal: true

# Training Time
# https://www.codewars.com/kata/572ab0cfa3af384df7000ff8/train/ruby

def shuffle_it(arr, *arg)
  arg.each { |a, b| arr[a], arr[b] = arr[b], arr[a] }
  arr
end

p shuffle_it([1, 2, 3, 4, 5], [1, 2], [3, 4], [2, 3]) # ([1,3,5,2,4])
