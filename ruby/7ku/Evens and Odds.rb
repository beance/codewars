# frozen_string_literal: true

# Evens and Odds
# https://www.codewars.com/kata/583ade15666df5a64e000058/train/ruby
def evensAndOdds(n)
  n.even? ? n.to_s(2) : n.to_s(16)
end
p evensAndOdds(13)
p evensAndOdds(2)
