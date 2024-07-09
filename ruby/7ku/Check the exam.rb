# frozen_string_literal: true
# Check the exam
# https://www.codewars.com/kata/5a3dd29055519e23ec000074/train/ruby

def check_exam(arr1,arr2)
  result = arr1.zip(arr2).map { |a,b| a == b ? 4 : b == '' ? 0 : -1 }.sum
  result < 0 ? 0 : result
end

p check_exam(["a", "a", "b", "b"], ["a", "c", "b", "d"]) # 6
p check_exam(["a", "a", "c", "b"], ["a", "a", "b",  ""])