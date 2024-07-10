# frozen_string_literal: true

# Partial Word Searching
# https://www.codewars.com/kata/54b81566cd7f51408300022d/train/ruby
def findWord(query, array)
  a = array.grep(/#{query}/i)
  a.empty? ? ['Empty'] : a
end

a = ['elf', 'bog creature', 'bee ', 'milk', 'FROGS']

p findWord('MIL', a)
p findWord('26', a)
p findWord('og', a)
