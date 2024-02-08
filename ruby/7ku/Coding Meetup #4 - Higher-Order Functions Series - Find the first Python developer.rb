# frozen_string_literal: true

# Coding Meetup #4 - Higher-Order Functions Series - Find the first Python developer
# https://www.codewars.com/kata/5827bc50f524dd029d0005f2/train/ruby

def get_first_python(users)
  users.find { |u| u[:language] == "Python" }&.values_at(:first_name, :country)&.join(", ") || "There will be no Python developers"
end

list1 = [
  {first_name: "Mark", last_name: "G.", country: "Scotland", continent: "Europe", age: 22, language: "JavaScript"},
  {first_name: "Victoria", last_name: "T.", country: "Puerto Rico", continent: "Americas", age: 30, language: "Python"},
  {first_name: "Emma", last_name: "B.", country: "Norway", continent: "Europe", age: 19, language: "Clojure"}
]

p get_first_python(list1)
#, "Victoria, Puerto Rico"
