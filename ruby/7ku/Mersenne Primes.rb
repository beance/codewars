# frozen_string_literal: true

# https://www.codewars.com/kata/56af6e4198909ab73200013f/train/ruby

def valid_mersenne(n)
  [2, 3, 5, 7, 13, 17, 19, 31, 61, 89, 107, 127, 521, 607, 1279].include? n
end
