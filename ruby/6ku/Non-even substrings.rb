# frozen_string_literal: true

# https://www.codewars.com/kata/59da47fa27ee00a8b90000b4

def solve(s)
  count = 0
  (0...s.length).each { |i| count += (i + 1) if s[i].to_i.odd? }
  count
end

p solve '1357'
