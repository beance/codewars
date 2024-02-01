# frozen_string_literal: true

# The old switcheroo
# https://www.codewars.com/kata/55d410c492e6ed767000004f/train/ruby
#
def vowel_2_index(string)
  output = ''
  string.each_char.with_index do |char, i|
    char = (i + 1).to_s if char.downcase.match?(/[aeiou]/)
    output += char
  end
  output
end

def vowel_2_index(string)
  string.gsub(/[aeiou]/i) { Regexp.last_match.begin(0) + 1 }
end

p vowel_2_index("this is my string")
