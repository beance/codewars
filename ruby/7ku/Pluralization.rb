# frozen_string_literal: true

# Pluralization
# https://www.codewars.com/kata/57fe7ea808d102a2ba000edd/train/ruby

def pluralize(word)
  return "#{word}es" if word.end_with?('ch', 'sh', 'x', 'z', 's')
  return "#{word}s" if word.end_with?('ay', 'uy', 'ey', 'iy', 'oy', 'uy')
  return "#{word[0...-1]}ies" if word.end_with?('y')

  "#{word}s"
end

p pluralize('fly')
