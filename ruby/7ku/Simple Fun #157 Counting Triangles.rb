# frozen_string_literal: true
# Simple Fun #157: Counting Triangles
# https://www.codewars.com/kata/58ad29bc4b852b14a4000050/train/ruby

def counting_triangles(v)
  v.combination(3).sum { |a, b, c| is_triangle?(a, b, c) ? 1 : 0 }
end

def is_triangle?(a, b, c)
  sorted_sides = [a, b, c].sort
  sorted_sides[0] + sorted_sides[1] > sorted_sides[2]
end

p counting_triangles([5, 6, 7, 8])