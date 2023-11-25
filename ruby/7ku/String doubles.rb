# frozen_string_literal: false

# https://www.codewars.com/kata/search/ruby?q=&r%5B%5D=-7&xids=completed&beta=false&order_by=sort_date%20desc

def doubles(s)
  result = []
  s.chars.each { |i| !result.empty? && result[result.length - 1] == i ? result.pop : result << i }
  result.join
end

# def doubles(s)
#   while s.gsub! /(.)\1/, '';
#   end; s
# end
p doubles('zzzzykkkd')
# p doubles('abbcccdddda')
