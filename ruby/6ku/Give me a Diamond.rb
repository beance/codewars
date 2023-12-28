# frozen_string_literal: true

# Give me a Diamond
# https://www.codewars.com/kata/5503013e34137eeeaa001648/train/ruby

def diamond(n)
  return nil if n < 1 || n % 2 == 0
  top = (1..n).step(2).map { |i| ("*" * i).center(n).rstrip }
  (top + top.reverse[1..-1]).join("\n") + "\n"
end
