# frozen_string_literal: true

# Number of People in the Bus
# https://www.codewars.com/kata/5648b12ce68d9daa6b000099
def number(bus_stops)
  bus_stops.map { |i, o| i - o }.sum
end

p number([[10, 0], [3, 5], [5, 8]])
