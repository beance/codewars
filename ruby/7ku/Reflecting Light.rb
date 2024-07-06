# frozen_string_literal: true
# Reflecting Light
# https://www.codewars.com/kata/5eaf88f92b679f001423cc66/train/ruby

def reflections(maxX, maxY)
  (maxX & -maxX) == (maxY & -maxY)
end
