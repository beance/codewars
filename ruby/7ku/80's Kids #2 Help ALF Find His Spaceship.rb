# frozen_string_literal: true
# 80's Kids #2: Help ALF Find His Spaceship
# https://www.codewars.com/kata/5660aa3d5e011dfd6e000063/train/ruby

def find_spaceship(map)
  return "Spaceship lost forever." unless map.include?('X')
  map.split("\n").reverse.map.with_index { |x, i| [x.chars.index('X'),i] if x.include?('X') }.compact.flatten
end

p find_spaceship("..\nX.")
p find_spaceship("..\n.X")
# p find_spaceship(".X\n..")
# p find_spaceship("..\nX.")
# p find_spaceship("X")