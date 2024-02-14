# frozen_string_literal: true

# String counting
# https://www.codewars.com/kata/5cfd36ea4c60c3001884ed42/train/ruby

MOD = 1_000_000_007

def solve(s)
  a = 0
  b = 0
  s.chars.each do |c|
    a = (a + ((b + 1) * (90 - c.ord)) % MOD) % MOD
    b = (b * 26 + 90 - c.ord) % MOD
  end
  a
end

# Example
p solve("XYZ") # Output: 5
