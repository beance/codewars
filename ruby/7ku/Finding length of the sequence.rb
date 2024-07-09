# frozen_string_literal: true

# Finding length of the sequence
# https://www.codewars.com/kata/5566b0dd450172dfc4000005/train/ruby

def length_of_sequence(arr, n)
  count = arr.count(n)

  return 0 if count != 2

  first_index = arr.index(n)
  last_index = arr.rindex(n)

  last_index - first_index + 1
end
