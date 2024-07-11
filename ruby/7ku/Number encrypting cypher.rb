# frozen_string_literal: true

# Number encrypting: cypher
# https://www.codewars.com/kata/57aa3927e298a757820000a8/train/ruby

DICT = {
  I: 1, R: 2, E: 3, A: 4, S: 5, G: 6, T: 7, B: 8, O: 0,
  l: 1, z: 2, e: 3, a: 4, s: 5, b: 6, t: 7, g: 9, o: 0
}.freeze
def cypher(string)
  string.chars.map { |e| DICT.has_key?(e.to_sym) ? DICT[e.to_sym] : e }.join
end

p cypher('Hello World') # "H3110 W0r1d"
p cypher('IlRzEeAaSsGbTtBgOo')

def cypher(string)
  string.tr('IREASGTBOlzeasbtgo', '123456780123456790')
end
