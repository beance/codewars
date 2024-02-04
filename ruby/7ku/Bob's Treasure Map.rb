# frozen_string_literal: true

# Bob's Treasure Map
# https://www.codewars.com/kata/5c3d3b73c48b71654d5eb15c/train/ruby
def treasure_finder(map)
  return nil unless  map =~ /[NSEW]/
  [map.count("E") - map.count("W"), map.count("N") - map.count("S")]
end

# def treasure_finder(map)
#   return nil unless map.is_a?(String)
#   return nil if map.empty? || !map.is_a?(String)
#   return nil if map.scan(/["N|SEW]/).empty?
#   x, y = 0, 0
#
#   map.each_char do |direction|
#     case direction
#     when "N"
#       y += 1
#     when "S"
#       y -= 1
#     when "E"
#       x += 1
#     when "W"
#       x -= 1
#     end
#   end
#   [x, y]
# end

p treasure_finder(4)
