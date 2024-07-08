# frozen_string_literal: true
# Convert the score
# https://www.codewars.com/kata/5b6c220fa0a661fbf200005d/train/ruby

def scoreboard(string)
  scores = {nil: 0, one: 1, two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7, eight: 8, nine: 9}
  string.split.map { |x| scores[x.to_sym] }.compact
end


p scoreboard("Arsenal just conceded another goal, two nil")