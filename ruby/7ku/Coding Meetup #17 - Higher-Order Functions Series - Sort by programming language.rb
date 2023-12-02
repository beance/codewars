# frozen_string_literal: true

# Coding Meetup #17 - Higher-Order Functions Series - Sort by programming language
# https://www.codewars.com/kata/583ea278c68d96a5fd000abd/train/ruby

def sort_by_language(arr)
  arr.sort { |a, b| [a['language'], a['first_name']] <=> [b['language'], b['first_name']] }
end

arr1 = [
  { 'first_name' => 'Nikau', 'last_name' => 'R.', 'contry' => 'New Zealand', 'continent' => 'Oceania', 'age' => 39,
    'language' => 'Ruby' },
  { 'first_name' => 'Precious', 'last_name' => 'G.', 'contry' => 'South Africa', 'continent' => 'Africa', 'age' => 22,
    'language' => 'JavaScript' },
  { 'first_name' => 'Maria', 'last_name' => 'S.', 'contry' => 'Peru', 'continent' => 'Americas', 'age' => 30,
    'language' => 'C' },
  { 'first_name' => 'Agustin', 'last_name' => 'V.', 'contry' => 'Uruguay', 'continent' => 'Americas', 'age' => 19,
    'language' => 'JavaScript' }
]

p sort_by_language(arr1)


# or
# def sort_by_language(arr)
#   arr.sort_by {|d| d.values_at 'language', 'first_name'}
# end