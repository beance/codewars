# frozen_string_literal: true

# Beginner Series #3 Sum of Numbers
# https://www.codewars.com/kata/55f2b110f61eb01779000053

def get_sum(a, b)
  a < b ? [*a..b].sum : [*b..a].sum
end

p get_sum(5, -1)
