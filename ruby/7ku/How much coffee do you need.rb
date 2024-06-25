# frozen_string_literal: true

# How much coffee do you need?
# https://www.codewars.com/kata/57de78848a8b8df8f10005b1/train/ruby
#

def how_much_coffee(events)
  filtered_events = events.select { |v| /^(cw|dog|cat|movie)$/i.match?(v) }
  coffee_count = filtered_events.sum { |b| /[A-Z]+/.match?(b[0]) ? 2 : 1 }
  coffee_count < 4 ? coffee_count : 'You need extra sleep'
end
p how_much_coffee(['cw'])
# p how_much_coffee(["cw", "CAT"])
# p how_much_coffee(['cw','CAT', 'cw=others'])
