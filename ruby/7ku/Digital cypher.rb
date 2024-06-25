# frozen_string_literal: true

# Digital cypher
# https://www.codewars.com/kata/592e830e043b99888600002d/train/ruby

def encode(message, key)
  message.chars.map.with_index { |c, i| (c.ord - 96) + key.to_s[i % key.digits.length].to_i }
end

p encode('scout', 1939) # [20, 12, 18, 30, 21]
