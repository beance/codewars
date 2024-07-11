# frozen_string_literal: true

# Count all the sheep on farm in the heights of New Zealand
# https://www.codewars.com/kata/58e0f0bf92d04ccf0a000010/train/ruby
def lost_sheep(friday, saturday, total)
  return total if friday.empty? || saturday.empty?

  total - (friday.sum + saturday.sum)
end

p lost_sheep([11, 23, 3, 4, 15], [7, 14, 9, 21, 15], 300)
