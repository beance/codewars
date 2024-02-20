# frozen_string_literal: true

# Sort sentence pseudo-alphabetically
# https://www.codewars.com/kata/52dffa05467ee54b93000712/train/ruby

def sort(sentence)
  lower, upper = sentence.scan(/\w+/).partition { |w| w.downcase == w }
  (lower.sort + upper.sort.reverse).join(" ")
end

p sort("I, habitan of the Alleghanies, treating of him as he is in himself in his own rights")
# "as habitan he him himself his in in is of of own rights the treating I Alleghanies"
p sort("take up the task eternal, and the burden and the lesson")
# "and and burden eternal lesson take task the the the up"
