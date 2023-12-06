# frozen_string_literal: true

# Small enough? - Beginner
# https://www.codewars.com/kata/57cc981a58da9e302a000214/train/ruby

def small_enough(a, limit)
  a.max <= limit
end

p small_enough([78, 117, 110, 99, 104, 117, 107, 115], 100)
