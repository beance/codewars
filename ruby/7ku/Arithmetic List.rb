# frozen_string_literal: true

# https://www.codewars.com/kata/541da001259d9ca85d000688/train/ruby

def seqlist(first, c, l)
  i = 0
  arr = [first]
  while i != l - 1
    arr << arr[i] + c
    i += 1
  end
  arr
end

seqlist(0, 1, 20)
