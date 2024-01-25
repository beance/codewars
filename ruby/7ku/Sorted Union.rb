# frozen_string_literal: true

# Sorted Union
# https://www.codewars.com/kata/5729c30961cecadc4f001878/train/ruby

def unite_unique(*arr)
  arr.flatten.uniq
end

# p unite_unique([1, 2], [3, 4]) #[1, 2, 3, 4]
p unite_unique([1, 3, 2], [5, 2, 1, 4], [2, 1]) # [1, 3, 2, 5, 4]
# p unite_unique([4, 3, 2, 2]) #[4, 3, 2]
