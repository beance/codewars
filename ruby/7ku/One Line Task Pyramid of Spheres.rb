# frozen_string_literal: true

# [Code Golf] One Line Task: Pyramid of Spheres
# https://www.codewars.com/kata/5b74532131ef05150d000109/train/ruby

def calculate_distance(r)
  r.positive? ? (2 * (2 / 3.0)**0.5 * r).round(4) : 0
end

p calculate_distance(10)
