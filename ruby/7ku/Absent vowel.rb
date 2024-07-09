# frozen_string_literal: true

# Absent vowel
# https://www.codewars.com/kata/56414fdc6488ee99db00002c/train/ruby

VOWELS = 'aeiou'.chars

def absent_vowel(str)
  VOWELS.find_index { |c| !str.include?(c) }
end
# p absent_vowel('John Doe hs seven red pples under his bsket') # 0
p absent_vowel('Bb Smith sent us three neatly arranged range bicycles') # 3
