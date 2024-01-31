# frozen_string_literal: true

# Send in the Clones
# https://www.codewars.com/kata/58ddffda929dfc2cae0000a5/train/ruby

def clonewars(kata_per_day)
  [(2**(kata_per_day - 1)).ceil, 2**(kata_per_day + 1) - kata_per_day - 2]
end

p clonewars(0) # [16, 57]


# def clonewars(kata_per_day)
#   [(2**(kata_per_day - 1)).ceil, (0...kata_per_day).map { |i| 2**i * (kata_per_day - i) }.sum]
# end
