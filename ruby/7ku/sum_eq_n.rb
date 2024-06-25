# frozen_string_literal: true

# sum_eq_n?
# https://www.codewars.com/kata/54b68c9f48245d382a000f2a/train/ruby
#
def sum_eq_n?(arr, n)
  return true if arr.empty? && n.zero?

  arr.combination(2).any? { |a, b| a + b == n }
end

def sum_eq_n?(arr, n)
  return false if n.zero?

  l = 0
  r = arr.length - 1
  arr.sort!
  while l < r
    sum = arr[l] + arr[r]
    return true if sum == n

    if sum < n
      l += 1
    else
      r -= 1
    end
  end
  false
end

p sum_eq_n?([], 1)
