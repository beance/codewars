# frozen_string_literal: true

# Driving School Series #1
# https://www.codewars.com/kata/58999425006ee3f97c00011f/train/ruby

def passed(list)
  list = list.select { |i| i <= 18 }
  list.empty? ? 'No pass scores registered.' : (list.sum.to_f / list.size).round
end

# p passed([10, 10, 10, 18, 20, 20]) # 12
# p passed([21, 22, 24]) # 'No pass scores registered.'
p passed([20, 20, 21, 22, 11, 12, 13, 14, 10, 9, 8, 7, 11, 10, 20, 21, 22]) # 11
