# frozen_string_literal: true
# Reducing Problems - Bug Fixing #8
# https://www.codewars.com/kata/55d2603d506a40e162000056/train/ruby

def calculate_total(t1, t2)
  t1.sum > t2.sum
end

p calculate_total([1,2,2],[1,0,0]) #=> true
