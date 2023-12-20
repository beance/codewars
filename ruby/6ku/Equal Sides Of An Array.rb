# frozen_string_literal: true

# Equal Sides Of An Array
# https://www.codewars.com/kata/5679aa472b8f57fb8c000047/train/ruby

def find_even_index(arr)
  left_sum = 0
  right_sum = arr.sum

  arr.each_with_index do |e, ind|
    right_sum -= e
    return ind if left_sum == right_sum

    left_sum += e
  end

  -1
end

p find_even_index([20, 10, 30, 10, 10, 15, 35])
