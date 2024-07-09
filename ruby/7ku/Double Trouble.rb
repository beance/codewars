# frozen_string_literal: true
# Double Trouble
# https://www.codewars.com/kata/57f7796697d62fc93d0001b8/train/ruby

def trouble(x, t)
  result = []
  x.each_with_index { |num, i| (i > 0 && result.last + num == t) ? next : result << num }
  result
end


p trouble([4, 1, 1, 1, 4], 2)