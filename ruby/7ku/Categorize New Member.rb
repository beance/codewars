# frozen_string_literal: true

# Categorize New Member
# https://www.codewars.com/kata/5502c9e7b3216ec63c0001aa

def open_or_senior(data)
  data.map { |e| e[0] >= 55 && e[1] > 7 ? 'Senior' : 'Open' }
end

p open_or_senior([[16, 23], [73, 1], [56, 20], [1, -1]])
