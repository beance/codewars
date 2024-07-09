# frozen_string_literal: true
# Sum of Minimums!
# https://www.codewars.com/kata/5d5ee4c35162d9001af7d699/train/ruby


def sum_of_minimums(numbers)
  numbers.sum(&:min)
end

p sum_of_minimums([[1, 2, 3, 4, 5], [5, 6, 7, 8, 9], [20, 21, 34, 56, 100] ]) # 26
