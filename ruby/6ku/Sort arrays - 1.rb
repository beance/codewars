# frozen_string_literal: true

# Sort arrays - 1
# https://www.codewars.com/kata/51f41b98e8f176e70d0002a8/train/ruby

# input: names - unsorted array
# output: sorted array
def sortme(names)
  names.sort
end

p sortme(["one", "two", "three"]) # ["one", "three", "two"])
