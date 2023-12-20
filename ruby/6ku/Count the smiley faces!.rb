# frozen_string_literal: true

# Count the smiley faces!
# https://www.codewars.com/kata/583203e6eb35d7980400002a/train/ruby

def count_smileys(arr)
  arr.count { |item| item =~ /[:;][-~]?[)D]/ }
end

p count_smileys([";]", ":[", ";*", ":$", ";-D"])
