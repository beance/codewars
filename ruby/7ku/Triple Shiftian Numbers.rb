# frozen_string_literal: true

# Triple Shiftian Numbers
# https://www.codewars.com/kata/56b7526481290c2ff1000c75/train/ruby
#
def triple_shiftian(base, n)
  return base[n] if n < 3

  t1, t2, t3 = base

  (3..n).each do
    t1, t2, t3 = t2, t3, 4 * t3 - 5 * t2 + 3 * t1
  end

  t3
end

p triple_shiftian([1, 1, 1], 25)
