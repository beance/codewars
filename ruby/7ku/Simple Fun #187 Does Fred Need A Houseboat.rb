# frozen_string_literal: true

# Simple Fun #187: Does Fred Need A Houseboat?
# https://www.codewars.com/kata/58bf72b02d1c7c18d9000127/train/ruby

def does_fred_need_houseboat(x, y)
  ((Math::PI * (x**2 + y**2)) / 100).ceil
end

p does_fred_need_houseboat(25, 0) # 20
