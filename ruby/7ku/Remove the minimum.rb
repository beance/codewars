# Remove the minimum

# https://www.codewars.com/kata/563cf89eb4747c5fb100001b

def remove_smallest(numbers)
  numbers.delete_at(numbers.index(numbers.min))
  numbers
end
p remove_smallest [179, 253, 16, 106, 60, 110]