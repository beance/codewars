# frozen_string_literal: true

# Alphabet symmetry
# https://www.codewars.com/kata/59d9ff9f7905dfeed50000b0/train/ruby

def solve(arr)
  list = [*'a'..'z']
  count = 0
  result = []
  arr.each do |w|
    w.chars.each_with_index { |c, i| count += 1 if list.index(c.downcase) == i }
    result << count
    count = 0
  end
  result
end

p solve(%w[abode ABc xyzD])


# def solve(strings)
#   strings.map{ |s| s.downcase.each_char.zip('a'..'z').count{ |a, b| a == b } }
# end