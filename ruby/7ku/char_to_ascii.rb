# frozen_string_literal: true

# char_to_ascii
# https://www.codewars.com/kata/55e9529cbdc3b29d8c000016/train/ruby
#

def char_to_ascii(str)
  return nil if str.empty?

  alphabet = ('a'..'z').to_a
  str.chars.each_with_object(Hash.new(0)) { |e, hash| hash[e] = e.ord if alphabet.include?(e.downcase) }
end

p char_to_ascii('')
p char_to_ascii('a')
