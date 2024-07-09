# frozen_string_literal: true
# Bingo ( Or Not )
# https://www.codewars.com/kata/5a1ee4dfffe75f0fcb000145/train/ruby

def bingo(arr)
  arr.map { |num| (num + 96).chr }.join.scan(/[bingo]/).uniq.join.size == 5 ? "WIN" : "LOSE"
end

p bingo([1,2,3,4,5,6,7,8,9,10])
p bingo([21,13,2,7,5,14,7,15,9,10])