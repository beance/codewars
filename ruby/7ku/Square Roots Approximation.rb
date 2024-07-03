# frozen_string_literal: true

# Square Roots: Approximation
# https://www.codewars.com/kata/58475cce273e5560f40000fa/train/ruby
#

def approx_root(n)
  base = Math.sqrt(n).floor
  lower_perfect_square = base**2

  return base.to_f if lower_perfect_square == n

  upper_perfect_square = (base + 1)**2
  diff_gn = n - lower_perfect_square
  diff_lg = upper_perfect_square - lower_perfect_square
  (base + (diff_gn.to_f / diff_lg)).round(2)
end

puts approx_root(213) # => 14.59
puts approx_root(100) # => 10.0
puts approx_root(50) # => 7.07
puts approx_root(26) # => 5.10
puts approx_root(1) # => 1.0
puts approx_root(2) # => 1.41
