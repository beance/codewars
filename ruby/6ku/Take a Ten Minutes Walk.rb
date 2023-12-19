# frozen_string_literal: true

# Take a Ten Minutes Walk
# https://www.codewars.com/kata/54da539698b8a2ad76000228/train/ruby

def is_valid_walk(walk)
  (walk.count("n") == walk.count("s") && walk.count("w") == walk.count("e")) and walk.size == 10
end

p is_valid_walk(%w[n s n s n s n s n s])
p is_valid_walk(%w[n n n s n s n s n s])
p is_valid_walk(%w[w])
p is_valid_walk(['w', 'e', 'w', 'e', 'w', 'e', 'w', 'e', 'w', 'e', 'w', 'e'])
