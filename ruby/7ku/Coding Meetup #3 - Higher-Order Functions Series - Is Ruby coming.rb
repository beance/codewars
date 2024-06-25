# frozen_string_literal: true

# Coding Meetup #3 - Higher-Order Functions Series - Is Ruby coming?
# https://www.codewars.com/kata/5827acd5f524dd029d0005a4/train/ruby
#
def is_ruby_coming(list)
  list.any? { |u| u[:language] == 'Ruby' }
end

list1 = [
  { first_name: 'Sofia', last_name: 'I.', country: 'Argentina', continent: 'Americas', age: 35, language: 'Java' },
  { first_name: 'Lukas', last_name: 'X.', country: 'Croatia', continent: 'Europe', age: 35, language: 'Python' },
  { first_name: 'Madison', last_name: 'U.', country: 'United States', continent: 'Americas', age: 32, language: 'Ruby' }
]
p is_ruby_coming(list1)
