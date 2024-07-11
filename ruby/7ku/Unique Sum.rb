# frozen_string_literal: true

# Unique Sum
# https://www.codewars.com/kata/56b1eb19247c01493a000065/train/ruby
def unique_sum(lst)
  return nil if lst.empty?

  lst.uniq.sum
end

p unique_sum([1, 2, 3, 2, 1])
