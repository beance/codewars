# frozen_string_literal: true
# Difference between two collections
# https://www.codewars.com/kata/594093784aafb857f0000122/train/ruby

def diff(a, b)
  ((a - b) + (b - a)).uniq.sort
end

def diff(a, b)
  ((a | b) - (a & b)).sort
end

a = ["a","b","z","d","e","d"]
b = ["a","b", "j","j"]

# difference = ["d","e","j","z"]

p diff(a, b)