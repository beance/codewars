# frozen_string_literal: true

# Approximate e
# https://www.codewars.com/kata/530a59904beff5e6bc000046/train/ruby
def approximate_e(n = Math::E)
  n.is_a?(Numeric) && n >= 1 ? (1 + 1.0 / n)**n : Math::E
end
p approximate_e(2.0)
