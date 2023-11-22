# frozen_string_literal: true

# Remove the minimum

# https://www.codewars.com/kata/563cf89eb4747c5fb100001b

def remove_smallest(numbers)
  return numbers if numbers.empty?

  result = numbers.dup
  result.delete_at(numbers.index(numbers.min))
  result
end
p remove_smallest [24, 122, 247, 266, 71, 365, 84, 1, 146, 140]
