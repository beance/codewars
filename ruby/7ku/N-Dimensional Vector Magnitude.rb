# frozen_string_literal: true

# N-Dimensional Vector Magnitude
# https://www.codewars.com/kata/5806c2f897dba05dd900004c/train/ruby


def magnitude vector
  vector.sum { |i| i**2 }**0.5
end
