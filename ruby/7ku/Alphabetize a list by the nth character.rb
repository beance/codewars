# frozen_string_literal: true

# Alphabetize a list by the nth character
# https://www.codewars.com/kata/54eea36b7f914221eb000e2f/train/ruby

def sort_it(list, n)
  list.split(', ').sort_by { |word|  word[n-1].downcase }.join(', ')
end

# p sort_it('cat, dog, eel, bee', 3) #== 'bee, dog, eel, cat'

# p sort_it('bill, bell, ball, bull', 2) #== 'bee, dog, eel, cat'
# p sort_it('cat, dog, eel, bee', 3) #== 'bee, dog, eel, cat'
p sort_it('Karl Gustav Kempf, Siegfried Kircheis, Fritz Josef Bittenfeld, Oskar von Reuenthal, Ulrich Kesler', 5) #== 'bee, dog, eel, cat'
