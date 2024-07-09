# frozen_string_literal: true

# Numbers to Letters
# https://www.codewars.com/kata/57ebaa8f7b45ef590c00000c/train/ruby
#
def switcher(arr)
  letters = ('a'..'z').to_a.reverse! + ['!', '?', ' ']
  arr.map { |e| letters[e.to_i - 1] }.join
end
p switcher(%w[24 12 23 22 4 26 9 8]) # eq('codewars'
