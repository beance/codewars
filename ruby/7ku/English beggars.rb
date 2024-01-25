# frozen_string_literal: true

# English beggars
# https://www.codewars.com/kata/59590976838112bfea0000fa/train/ruby
#

def beggars(values, n)
  return [] if n.zero?

  arr = Array.new(n, 0)
  values.each_with_index { |value, i| arr[i % n] += value }
  arr
end

# p beggars([1,2,3,4,5],1) #[15]
p beggars([1, 2, 3, 4, 5], 1) # [9,6]
