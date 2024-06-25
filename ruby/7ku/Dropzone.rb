# frozen_string_literal: true

# Dropzone
# https://www.codewars.com/kata/5b6d065a1db5ce9b4c00003c/train/ruby

def dropzone(fire, dropzones)
  x0, y0 = fire
  dropzones.min_by { |x, y| Math.hypot(x - x0, y - y0) }
end

p dropzone([6, 8], [[3, 2], [6, 1], [7, 9]])
# p dropzone([9,2], [[1,4],[9,9],[5,5]])
p dropzone([7, 2], [[9, 0], [8, 1], [3, 0]])
# [7,9]
