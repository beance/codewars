# frozen_string_literal: true
# Double Sort
# https://www.codewars.com/kata/57cc79ec484cf991c900018d/train/ruby

def db_sort(arr)
  numbers, strings = arr.partition { |item| item.is_a?(Numeric) }
  numbers.sort + strings.sort
end

def db_sort(arr)
  arr.partition { |n| Integer === n }.flat_map(&:sort)
end

p db_sort(["Banana", "Orange", "Apple", "Mango", 0, 2, 2]) # [0,2,2,"Apple","Banana","Mango","Orange"]
