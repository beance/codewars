# frozen_string_literal: true

# Multiples of 3 or 5
# https://www.codewars.com/kata/514b92a657cdc65150000006/train/ruby

def solution(number)
  (1..number - 1).select { |i| i % 3 == 0 || i % 5 == 0 }.sum
end

p solution(200)
