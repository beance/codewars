# frozen_string_literal: true

# Floating-point Approximation (III)
# https://www.codewars.com/kata/5b0c0ec907756ffcff00006e/train/ruby

def quadratic(_a, b, c)
  -c / b.to_f
end

p quadratic(0, 5_000_000_000, 10)
