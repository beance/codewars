# frozen_string_literal: true
# Sum of a sequence
# https://www.codewars.com/kata/586f6741c66d18c22800010a



def sequence_sum(begin_number, end_number, step)
  (begin_number..end_number).step(step).sum
end

p sequence_sum(2, 6, 2) #== 12
