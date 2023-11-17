# frozen_string_literal: true

# https://www.codewars.com/kata/54b42f9314d9229fd6000d9c/train/ruby

def duplicate_encode(word)
  arr = word.downcase.chars
  arr.map { |e| arr.count(e) > 1 ? ')' : '(' }.join('')
end

p duplicate_encode('recede')
