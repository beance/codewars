# frozen_string_literal: true

# Unflatten a list (Easy)
# https://www.codewars.com/kata/57e2dd0bec7d247e5600013a/train/ruby

def unflatten(flat_array)
  res = []
  until flat_array.empty?
    if flat_array[0] >= 3
      res << flat_array.first(flat_array[0])
      flat_array.shift(flat_array[0])
    else
      res << flat_array[0]
      flat_array.shift
    end
  end
  res
end

p unflatten([1, 4, 5, 2, 1, 2, 4, 5, 2, 6, 2, 3, 3])
