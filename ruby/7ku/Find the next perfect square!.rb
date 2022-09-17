# frozen_string_literal: true

# Find the next perfect square!
# https://www.codewars.com/kata/56269eb78ad2e4ced1000013
def find_next_square(sq)
  Integer.sqrt(sq)**2 == sq ? (Integer.sqrt(sq) + 1)**2 : -1
end

p find_next_square(155)
