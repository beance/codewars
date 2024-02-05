# frozen_string_literal: true
# Genetic Algorithm Series - #1 Generate
# https://www.codewars.com/kata/567d609f1c16d7369c000008/train/ruby


def generate(length, acc = "")
  (0...length).map { rand(2) }.join
end

def generate length
  [0, 1].cycle.take(length).shuffle.join
end

p generate(50)