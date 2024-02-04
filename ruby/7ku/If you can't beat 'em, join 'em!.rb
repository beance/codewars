# frozen_string_literal: true

# If you can't beat 'em, join 'em!
# https://www.codewars.com/kata/5d37899a3b34c6002df273ee/train/ruby

def cant_beat_so_join(numbers)
  numbers.sort { |a, b| b.sum <=> a.sum }.flatten
end

p cant_beat_so_join([[1, 2], [3, 4], [5, 6], [7, 8], [9]]) #-> [7, 8, 5, 6, 9, 3, 4, 1, 2]
