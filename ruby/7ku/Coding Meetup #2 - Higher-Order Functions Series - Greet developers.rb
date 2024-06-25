# frozen_string_literal: true

# Coding Meetup #2 - Higher-Order Functions Series - Greet developers
# https://www.codewars.com/kata/58279e13c983ca4a2a00002a/train/ruby

def greet_developers(list)
  list.map { |u| u.merge({ greeting: "Hi #{u[:firstName]}, what do you like the most about #{u[:language]}?" }) }
end

list1 = [
  { firstName: 'Sofia', lastName: 'I.', country: 'Argentina', continent: 'Americas', age: 35, language: 'Java' },
  { firstName: 'Lukas', lastName: 'X.', country: 'Croatia', continent: 'Europe', age: 35, language: 'Python' },
  { firstName: 'Madison', lastName: 'U.', country: 'United States', continent: 'Americas', age: 32, language: 'Ruby' }
]

p greet_developers(list1)
