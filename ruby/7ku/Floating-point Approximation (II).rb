# frozen_string_literal: true

# Floating-point Approximation (II)
# https://www.codewars.com/kata/581ee0db1bbdd04e010002fd/train/ruby

def interp(f, l, u, n)
  step = (u - l) / n.to_f
  (0...n).map { |i| (100 * f.call(i * step + l)).floor / 100.0 }
end

p interp(->(x) { Math.sin(x) }, 0, 18.0, 12)
