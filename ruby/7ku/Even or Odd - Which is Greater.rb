# frozen_string_literal: true

# Even or Odd - Which is Greater
# https://www.codewars.com/kata/57f7b8271e3d9283300000b4/train/ruby

def even_or_odd(s)
  s = s.chars.map(&:to_i)
  odd = s.select(&:odd?).sum
  even = s.select(&:even?).sum
  if odd > even
    'Odd is greater than Even'
  elsif even > odd
    'Even is greater than Odd'
  else
    'Even and Odd are the same'
  end
end

def even_or_odd(s)
  odds, evens = s.chars.map(&:to_i).partition(&:odd?)
  ['Even and Odd are the same', 'Odd is greater than Even',
   'Even is greater than Odd'][odds.sum <=> evens.sum]
end

p even_or_odd('123')
