# frozen_string_literal: true
# Build a pile of Cubes
# https://www.codewars.com/kata/5592e3bd57b64d00f3000047/train/ruby
#
def find_nb(m)
  n = 0
  while m > 0
    n += 1
    m -= n**3
  end
  m == 0 ? n : -1
end




p find_nb(4183059834009)