# frozen_string_literal: true
# Identical Elements
# https://www.codewars.com/kata/583ebb9328a0c034490001ba/train/ruby

def duplicate_elements(m, n)
  !(m & n).empty?
end

p duplicate_elements([12, 2, 3, 4, 5], [1, 6, 7, 8, 9])
