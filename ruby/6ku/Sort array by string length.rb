# frozen_string_literal: true

# Sort array by string length
# https://www.codewars.com/kata/57ea5b0b75ae11d1e800006c/train/ruby

def sort_by_length(arr)
  arr.sort_by(&:length)
end

tests = [
  [["i", "to", "beg", "life"], ["beg", "life", "i", "to"]],
  [["", "pizza", "brains", "moderately"], ["", "moderately", "brains", "pizza"]],
  [["short", "longer", "longest"], ["longer", "longest", "short"]],
  [["a", "of", "dog", "food"], ["dog", "food", "a", "of"]],
  [["", "bees", "eloquent", "dictionary"], ["", "dictionary", "eloquent", "bees"]],
  [["a short sentence", "a longer sentence", "the longest sentence"], ["a longer sentence", "the longest sentence", "a short sentence"]]
]

p sort_by_length tests
