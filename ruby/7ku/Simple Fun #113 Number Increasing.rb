# frozen_string_literal: true

# Simple Fun #113: Number Increasing
# https://www.codewars.com/kata/589d1e88e8afb7a85e00004e/train/ruby

require "set"
def number_increasing(n)
  queue = [1]
  visited = Set.new([1])

  until queue.empty?
    current = queue.shift

    return true if current == n

    next_values = [current * 3, current + 5]
    next_values.each do |next_value|
      if next_value <= n && !visited.include?(next_value)
        queue << next_value
        visited << next_value
      end
    end
  end

  false
end

def number_increasing(n)
  n > 0 && (n % 5 == 1 || number_increasing(n % 3 > 0 ? n - 5 : n / 3))
end

p number_increasing(54321)
