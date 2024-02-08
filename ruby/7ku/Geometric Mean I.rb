# frozen_string_literal: true

# Geometric Mean I
# https://www.codewars.com/kata/56ebcea1b9d927f9bf000544/train/ruby

def geometric_meanI(arr)
  gm = arr.select { |a| a.is_a?(Numeric) && a >= 0 }
  return 0 if ((arr.length - gm.length) > 1) && (arr.length-1 < 11)
  return 0 if ((arr.length - gm.length) >= (arr.length / 10)) && (arr.length-1 >= 12)
  gm.reduce(1, :*)**(1.0 / gm.length)
end

arr = [2, 2, 3, 4, 10, -4, 8, 1, 4, 6, 7, 2]
p geometric_meanI(arr)
