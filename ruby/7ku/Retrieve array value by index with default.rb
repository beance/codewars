# frozen_string_literal: true

# Retrieve array value by index with default
# https://www.codewars.com/kata/515ceaebcc1dde8870000001/train/ruby

def solution(items, index, default_value)
  items.fetch(index, default_value)
end
data = %w[a b c]
p solution(data, 5, 'd')
data = [1, 2, 3]
p solution(data, -5, 'd')
