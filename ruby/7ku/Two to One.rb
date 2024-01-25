# frozen_string_literal: true

# Two to One
# https://www.codewars.com/kata/latest/ruby?q=&r%5B%5D=-7&xids=completed&beta=false&order_by=popularity%20desc

def longest(a1, a2)
  (a1 + a2).chars.uniq.sort.join
end

p longest('aretheyhere', 'yestheyarehere')
