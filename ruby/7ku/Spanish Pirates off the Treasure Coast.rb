# frozen_string_literal: true
# Spanish Pirates off the Treasure Coast
# https://www.codewars.com/kata/58b6d8ba1697a5655d00009b/train/ruby
def secret_map(sp)
  "count of pirates: #{sp.count(["pirate"])} and the count of gold piles: #{sp.count(["pile_of_gold"])}"
end


secret_map = [
  ["spain"], [], [], [], [], [],
  [], [], [], [], [], [],
  [], [], ["pirate"], [], [], [],
  [], [], [], [], ["pirate"], [],
  [], [], [], [], [], [],
  [], [], [], ["pile_of_gold"], [], [],
]

p secret_map(secret_map)