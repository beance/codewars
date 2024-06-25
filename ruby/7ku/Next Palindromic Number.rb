# frozen_string_literal: true

# Next Palindromic Number.
# https://www.codewars.com/kata/56a6ce697c05fb4667000029/train/ruby

def next_pal(val)
  i = 1
  loop do
    val += i
    return val if val.to_s == val.to_s.reverse
  end
end

p next_pal(188)
