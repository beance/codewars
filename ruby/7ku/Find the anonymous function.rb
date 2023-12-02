# frozen_string_literal: true

# Find the anonymous function
# https://www.codewars.com/kata/55a12bb8f0fac1ba340000aa/train/ruby

def find_function(func, arr)
  func.select! { |i| i.respond_to?(:call) }
  arr.select(&func[0])
end

p find_function([->(a) { a.even? }, 9, 3, 1, 0], [1, 2, 3, 4]) # [2,4]
