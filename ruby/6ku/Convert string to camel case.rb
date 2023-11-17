# frozen_string_literal: true

# https://www.codewars.com/kata/517abf86da9663f1d2000003/train/ruby

def to_camel_case(str)
  str.split(/[-_]/).map.with_index { |x, i| i.positive? ? x.capitalize : x }.join
end

p to_camel_case('the-stealth-warrior')
p to_camel_case('The_Stealth_Warrior')
