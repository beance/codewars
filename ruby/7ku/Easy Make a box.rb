# frozen_string_literal: true

# Easy; Make a box
# https://www.codewars.com/kata/58644e8ddf95f81a38001d8d/train/ruby

def box(n)
  n.times.map { |i| i == 0 || i == n - 1 ? "-" * n : "-".ljust(n - 1, " ") + "-" }
end

# p box(1)
# p box(2)
# p box(3)
# p box(4)
p box(5)
