# frozen_string_literal: true

# Shaving the Beard
# https://www.codewars.com/kata/57efa1a2108d3f73f60000e9/train/ruby

def trim(beard)
  beard.map.with_index do |row, index|
    if index == beard.length - 1
      row.map { |char| char = "..." }
    else
      row.map { |char| char == "J" ? char = "|" : char }
    end
  end
end

p trim([["|", "...", "...", "..."], ["|", "...", "...", "|"], ["...", "|", "|", "..."]])
# [["|", '|'],["|", '|'],["...", '...']]
