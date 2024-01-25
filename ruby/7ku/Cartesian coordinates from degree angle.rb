# frozen_string_literal: true

# Cartesian coordinates from degree angle
# https://www.codewars.com/kata/555f43d8140a6df1dd00012b/train/ruby

def coordinates(degrees, radius)
  angle_radians = degrees * Math::PI / 180.0
  [(radius * Math.cos(angle_radians)).round(10), (radius * Math.sin(angle_radians)).round(10)]
end

p coordinates(45, 1)
p coordinates(90, 1)
