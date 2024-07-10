# frozen_string_literal: true

# Find the capitals
# https://www.codewars.com/kata/539ee3b6757843632d00026b/train/ruby

def capitals(word)
  word.chars.map.with_index { |e, i| i if e == e.upcase && e.to_i.zero? }.compact
end

p capitals('CodEWaRs')
p capitals('')
p capitals('4ysdf4')
