# frozen_string_literal: true

# Regex Failure - Bug Fixing #2
# https://www.codewars.com/kata/55c423ecf847fbcba100002b/train/ruby

def filter_words(phrase)
  phrase.gsub(/(bad|mean|ugly|horrible|hideous)/i, 'awesome')
end

p filter_words("You're Bad! timmy!")
