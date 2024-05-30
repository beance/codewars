# frozen_string_literal: true

# Sorted? yes? no? how?
# https://www.codewars.com/kata/580a4734d6df748060000045/train/ruby

def is_sorted_and_how(arr)
  if arr == arr.sort
    "yes, ascending"
  elsif arr == arr.sort.reverse
    "yes, descending"
  else
    "no"
  end
end

p is_sorted_and_how([15, 7, 3, -8]) # 'yes, descending'
