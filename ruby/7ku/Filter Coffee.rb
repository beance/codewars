# frozen_string_literal: true

# Filter Coffee
# https://www.codewars.com/kata/56069d0c4af7f633910000d3

def search(budget, prices)
  prices.select { |e| e <= budget }.sort.join(',')
end

p search(14, [7, 3, 23, 9, 14, 20, 7])
