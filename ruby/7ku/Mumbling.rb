# frozen_string_literal: true

# Mumbling
# https://www.codewars.com/kata/5667e8f4e3f572a8f2000039

def accum(s)
  s.chars.map.with_index { |char, index| (char.to_s * (index + 1)).downcase.capitalize }.join('-')
end

p accum('HbideVbxncC') # , "H-Bb-Iii-Dddd-Eeeee-Vvvvvv-Bbbbbbb-Xxxxxxxx-Nnnnnnnnn-Cccccccccc-Ccccccccccc"
