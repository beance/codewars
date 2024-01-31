# frozen_string_literal: true
# The fusc function -- Part 1
# https://www.codewars.com/kata/570409d3d80ec699af001bf9/train/ruby

def fusc(n)
  return 0 if n == 0
  return 1 if n == 1
  return fusc(n / 2) if n % 2 == 0

  fusc((n - 1) / 2) + fusc((n + 1) / 2)
end