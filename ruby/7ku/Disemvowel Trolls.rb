# frozen_string_literal: true

# Disemvowel Trolls
# https://www.codewars.com/kata/52fba66badcd10859f00097e

def disemvowel(str)
  str.gsub(/[aeiouAEIOU]/, '')
end

disemvowel('This website is for losers LOL!')
