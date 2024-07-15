# frozen_string_literal: true

# Interlocking Binary Pairs
# https://www.codewars.com/kata/628e3ee2e1daf90030239e8a/train/ruby
def interlockable(a, b)
  (a & b) == 0
end

p interlockable(9, 4)
p interlockable(7, 1)
