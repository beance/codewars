# frozen_string_literal: true

# Area of an arrow
# https://www.codewars.com/kata/589478160c0f8a40870000bc/train/ruby

def arrow_area(a, b)
  (a * b / 4.0).round(2)
end

p arrow_area(7, 6)
