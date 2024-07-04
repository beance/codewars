# frozen_string_literal: true
# Simple Fun #131: Learn Charitable Game
# https://www.codewars.com/kata/58a651ff27f95429f80000d0/train/ruby


def learn_charitable_game(arr)
  !arr.all?(&:zero?) && (arr.reduce(:+) % arr.size).zero?
end



# p learn_charitable_game([0, 56, 100])
p learn_charitable_game([100, 100, 100, 90, 1, 0, 0])
# p learn_charitable_game([0, 0, 0, 0])
p learn_charitable_game([36, 3, 89, 53, 54, 7, 89, 70, 57, 54, 15, 78, 59, 21, 86, 9, 79, 58, 26, 51, 63, 24, 8, 93, 69, 91, 50, 82, 80, 92, 47, 19] )