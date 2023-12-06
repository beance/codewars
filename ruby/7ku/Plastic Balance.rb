# frozen_string_literal: true

# Plastic Balance
# https://www.codewars.com/kata/625ea5c1a071210065c923af/train/ruby

def plastic_balance(list)
  return [] if list.empty?

  list[1...(list.size - 1)].sum == list[0] + list[-1] ? list : plastic_balance(list[1...(list.size - 1)])
end

p plastic_balance([0, 104, 3, 101, 0, 111]) # [104, 3, 101, 0]
# p plastic_balance([4, 4]) # []
# p plastic_balance([12, 3, 4, 5]) # []
p plastic_balance([1, 2, 3, 4, 5]) # []
