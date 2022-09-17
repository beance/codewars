# frozen_string_literal: true

# https://www.codewars.com/kata/57cebe1dc6fdc20c57000ac9

def find_short(s)
  s.split.min_by(&:length).length
end

p find_short('bitcoin take over the world maybe who knows perhaps')
