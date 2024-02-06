# frozen_string_literal: true
# Conference Traveller
# https://www.codewars.com/kata/56f5594a575d7d3c0e000ea0/train/ruby

def conference_picker(cities_visited, cities_offered)
  (cities_offered - cities_visited)[0] || "No worthwhile conferences this year!"
end

# p conference_picker([],['Philadelphia','Osaka','Tokyo','Melbourne'])
# #'Philadelphia'
# p conference_picker([],['Brussels','Madrid','London'])
# #'Brussels'
# p conference_picker([],['Sydney','Tokyo'])
# #'Sydney'
p conference_picker(['London','Berlin','Mexico City','Melbourne','Buenos Aires','Hong Kong','Madrid','Paris'],['Berlin','Melbourne'])
#'No worthwhile conferences this year!'
p conference_picker(['Beijing','Johannesburg','Sydney','Philadelphia','Hong Kong','Stockholm','Chicago','Seoul','Mexico City','Berlin'],['Stockholm','Berlin','Chicago'])
#'No worthwhile conferences this year!'
p conference_picker(['Mexico City','Dubai','Philadelphia','Madrid','Houston','Chicago','Delhi','Seoul','Mumbai','Lisbon','Hong Kong','Brisbane','Stockholm','Tokyo','San Francisco','Rio De Janeiro'],['Lisbon','Mexico City'])
#'No worthwhile conferences this year!'
