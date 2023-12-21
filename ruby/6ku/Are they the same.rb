# frozen_string_literal: true

# Are they the "same"?
# https://www.codewars.com/kata/550498447451fbbd7600041c/train/ruby
#
def comp(array1, array2)
  return false if array1.nil? || array2.nil?
  array1.sort.map { |x| x * x } == array2.sort
end

p comp([121, 144, 19, 161, 19, 144, 19, 11],
  [11 * 11, 121 * 121, 144 * 144, 19 * 19, 161 * 161, 19 * 19, 144 * 144, 19 * 19])
