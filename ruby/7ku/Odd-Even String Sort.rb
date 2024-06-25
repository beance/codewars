# frozen_string_literal: true

# Odd-Even String Sort
# https://www.codewars.com/kata/580755730b5a77650500010c/train/ruby
def sort_my_string(s)
  left, right = s.chars.partition.with_index { |_c, i| i.even? }
  "#{left.join} #{right.join}"
end

p sort_my_string('CodeWars')
