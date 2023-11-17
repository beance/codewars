# frozen_string_literal: true

# https://www.codewars.com/kata/59c633e7dcc4053512000073/train/ruby

def solve(s)
  tmp = [*'a'..'z']
  sum = []
  sub_sum = []
  s.gsub(/[aeiou]/, ' ').split(' ').each do |i|
    i.chars.each { |s| sub_sum << tmp.index(s) + 1 }
    sum << sub_sum.sum
    sub_sum = []
  end
  sum.max
end

p solve('zodiacs')
