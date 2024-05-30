# frozen_string_literal: true

# Sort Santa's Reindeer
# https://www.codewars.com/kata/52ab60b122e82a6375000bad/train/ruby

def sort_reindeer(reindeer_names)
  reindeer_names.sort_by { |reindeer| reindeer.split[1] }
end

p sort_reindeer(
  ["Dasher Tonoyan",
    "Dancer Moore",
    "Prancer Chua",
    "Vixen Hall",
    "Comet Karavani",
    "Cupid Foroutan",
    "Donder Jonker",
    "Blitzen Claus"]
)
