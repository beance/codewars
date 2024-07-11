# frozen_string_literal: true

# Some Circles
# https://www.codewars.com/kata/56143efa9d32b3aa65000016

def sum_circles(*args)
  "We have this much circle: #{args.sum { |i| Math::PI * (i / 2.0)**2 }.round}"
end

p sum_circles(2)
p sum_circles(48, 7, 8, 9, 10)
p sum_circles(2, 3, 4)
