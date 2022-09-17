# frozen_string_literal: true

# List Filtering
#  https://www.codewars.com/kata/latest/ruby?q=&r%5B%5D=-7&xids=completed&beta=false&order_by=popularity%20desc

def filter_list(l)
  l.reject { |element| element.is_a? String }
end

p filter_list([1, 'a', 'b', 0, 15])
