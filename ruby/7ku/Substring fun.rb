# frozen_string_literal: true

# Substring fun
# https://www.codewars.com/kata/565b112d09c1adfdd500019c/train/ruby
#

def nth_char(words)
  words.map.with_index { |w, i| w[i] }.join
end

p nth_char(["yoda", "best", "has"])
