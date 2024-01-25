# frozen_string_literal: true

# Binary Addition
# https://www.codewars.com/kata/551f37452ff852b7bd000139/

def add_binary(a, b)
  (a + b).to_s(2)
end

p add_binary(2, 2)
