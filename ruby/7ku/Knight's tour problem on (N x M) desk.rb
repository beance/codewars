# frozen_string_literal: true

# Knight's tour problem on (N x M) desk
# https://www.codewars.com/kata/5fc836f5a167260008dfad7f

def check(n, m)
  n * m >= 20 || [n, m].minmax.join == '34'
end

# Change this to the desired board size
p check(1, 1)

# p check(5, 5)
