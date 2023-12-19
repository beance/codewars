# frozen_string_literal: true

# Balance the arrays
# https://www.codewars.com/kata/58429d526312ce1d940000ee/train/ruby
def balance(arr1, arr2)
  arr1.map { |item| arr1.count(item) }.sort == arr2.map { |item| arr2.count(item) }.sort
end

# array1 = %w[a a a a a b b b]
# array2 = %w[c c c c c d d d]
# p balance(array1, array2)
array1 = %w[a b c d e f g g]
array2 = %w[h h i j k l m n]
p balance(array1, array2)
