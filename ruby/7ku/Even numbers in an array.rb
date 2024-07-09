# frozen_string_literal: true
# Even numbers in an array
# https://www.codewars.com/kata/5a431c0de1ce0ec33a00000c/train/ruby

def even_numbers(arr,n)
  arr.select(&:even?).last(n)
end

p even_numbers([1, 2, 3, 4, 5, 6, 7, 8, 9], 3)