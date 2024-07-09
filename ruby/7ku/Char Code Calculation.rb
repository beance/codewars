# frozen_string_literal: true
# Char Code Calculation

def calc(s)
  s.chars.map(&:ord).join.count('7')*6
end

p calc("ABC")
p calc("abcdef")