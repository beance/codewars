# frozen_string_literal: true

# Harry and the Mathematician's Chicken
# https://www.codewars.com/kata/59d12056dcc405ac130000d3/train/ruby

def chicken_options(n)
  return [0] unless n.is_a?(Numeric)
  (0..n).to_a.reject { |x| [1, 2, 4, 5, 7, 8, 11, 14, 17].include?(x) }
end


def chicken_options(n)
  (0..n).to_a - [1, 2, 4, 5, 7, 8, 11, 14, 17] rescue [0]
end

p chicken_options(38)
