# frozen_string_literal: true
# Are the twins even?
# https://www.codewars.com/kata/5a9da7d07ce110fea1000638/train/ruby

def even_twins(array)
  array.combination(2).map { |x, y| x + y }.uniq.count { |x| x.even? }
end

p even_twins([5,6,7,8,9]) #3
# [5, 6], [5, 7], [5, 8], [5, 9], [6, 7], [6, 8], [6, 9], [7, 8], [7, 9], [8, 9]