# frozen_string_literal: true

# Sort by Last Char
# https://www.codewars.com/kata/57eba158e8ca2c8aba0002a0/train/ruby

def last(x)
  x.split.sort_by { |y| y[-1] }
end

p last("man i need a taxi up to ubud") # ['a', 'need', 'ubud', 'i', 'taxi', 'man', 'to', 'up']
