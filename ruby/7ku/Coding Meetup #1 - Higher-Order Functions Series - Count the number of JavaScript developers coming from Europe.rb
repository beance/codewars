# frozen_string_literal: true

# Coding Meetup #1 - Higher-Order Functions Series - Count the number of JavaScript developers coming from Europe
# https://www.codewars.com/kata/582746fa14b3892727000c4f/train/ruby
#
def count_developers(list)
  list.count { |u| u[:continent] == "Europe" && u[:language] == "JavaScript" }
end

list1 = [
  {first_name: "Noah", last_name: "M.", country: "Switzerland", continent: "Europe", age: 19, language: "JavaScript"},
  {first_name: "Maia", last_name: "S.", country: "Tahiti", continent: "Oceania", age: 28, language: "JavaScript"},
  {first_name: "Shufen", last_name: "L.", country: "Taiwan", continent: "Asia", age: 35, language: "HTML"},
  {first_name: "Sumayah", last_name: "M.", country: "Tajikistan", continent: "Asia", age: 30, language: "CSS"}
]
p count_developers(list1)
