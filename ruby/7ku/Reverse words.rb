# frozen_string_literal: true

# Reverse words
# https://www.codewars.com/kata/5259b20d6021e9e14c0010d4

def reverse_words(str)
  str.split(/ /).map(&:reverse).join(' ')
end

# p reverse_words('The quick brown fox jumps over the lazy dog.')
p reverse_words('elbuod  decaps  sdrow') #== 'elbuod decaps sdrow'
