# frozen_string_literal: true

# A String of Sorts
# https://www.codewars.com/kata/536c6b8749aa8b3c2600029a/train/ruby

def sort_string(str, ordering)
  str.chars.sort_by { |item| ordering.index(item) || ordering.size }.join
end

p sort_string("foos", "of")
