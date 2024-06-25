# frozen_string_literal: true

# Simple Fun #21: Number Of Clans
# https://www.codewars.com/kata/5886cab0a95e17e61600009d/train/ruby

def number_of_clans(divisors, k)
  (1..k).map { |a| divisors.select { |div| (a % div).zero? } }.uniq.size
end

p number_of_clans([2, 3], 6) # 4
