# frozen_string_literal: true

# https://www.codewars.com/kata/5264d2b162488dc400000001/train/ruby

def spin_words(string)
  string.split.map { |i| i.length >= 5 ? i.reverse : i }.join(' ')
end

p spin_words('Hey fellow warriors')
