# frozen_string_literal: true
# Sorting by bits
# https://www.codewars.com/kata/59fa8e2646d8433ee200003f/train/ruby

def sort_by_bit(x)
  x.sort_by { |i| [i.to_s(2).count("1"), i] }
end


a = [3, 8, 3, 6, 5, 7, 9, 1]
p sort_by_bit(a) == [1, 8, 3, 3, 5, 6, 9, 7]