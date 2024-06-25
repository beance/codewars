# frozen_string_literal: true

# Leonardo numbers
# https://www.codewars.com/kata/5b2117eea454c89d4400005f/train/ruby

def leonardo_numbers(n, l0, l1, add)
  new_arr = [l0, l1]
  (2...n).each { |i| new_arr.push(new_arr[i - 2] + new_arr[i - 1] + add) }
  new_arr
end
