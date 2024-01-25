# frozen_string_literal: true

# Generating Numbers From Digits #1
# https://www.codewars.com/kata/584d05422609c8890f0000be/train/ruby

def factorial(n)
  (1..n).reduce(1, :*)
end

def multinomial_coefficient(arr)
  total_length = arr.length
  count = arr.each_with_object(Hash.new(0)) { |num, hash| hash[num] += 1 }
  denominator = count.values.reduce(1) { |acc, freq| acc * factorial(freq) }
  factorial(total_length) / denominator
end

def proc_arr(arr)
  combinations = multinomial_coefficient(arr.map(&:to_i))
  sorted_numbers = arr.sort.join('').to_i
  lowest = sorted_numbers
  highest = arr.sort.reverse.join('').to_i
  [combinations, lowest, highest]
end

p proc_arr(%w[1 2 3 0 5 1 1 3])
