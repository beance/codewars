# frozen_string_literal: true
# Simple Fun #296: Round And Round
# https://www.codewars.com/kata/591e8c715b1d254f9e00005e/train/ruby

def round_and_round(n, a, b)
  end_door = (a + b) % n
  end_door += n if end_door < 1
  end_door
end

p round_and_round(6, 2, -5)