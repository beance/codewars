# frozen_string_literal: true

# Digital cypher vol 2
# https://www.codewars.com/kata/592edfda5be407b9640000b2/train/ruby
def decode(code, key)
  alphabet = ('a'..'z').to_a
  key = key.digits.reverse
  code.map.with_index { |e, i| alphabet[e - key[i % key.size] - 1] }.join
end
p decode([20, 12, 18, 30, 21], 1939) # scout
