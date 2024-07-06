# frozen_string_literal: true

# Tetris Series #1 — Scoring System
# https://www.codewars.com/kata/5da9af1142d7910001815d32/train/ruby

def get_score(arr)
  start = [0, 40,	100, 300, 1200]
  sum_line = 0
  count = 1
  result = 0
  arr.each do |x|
    result += start[x] * count
    sum_line += x
    if sum_line >= 10
      count += 1
      sum_line -= 10
    end
  end
  result
end
arr = [0, 1, 1, 3, 0, 2, 1, 2]
p get_score(arr)
# 42560, instead got: 40340