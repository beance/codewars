# frozen_string_literal: true

# https://www.codewars.com/kata/58ef87dc4db9b24c6c000092/train/ruby

def sect_sort(arr, start, length = 0)
  if length.zero?
    [*arr[0...start], *arr[start..-1].sort!]
  else
    [*arr[0...start], *arr[start...start + length].sort!, *arr[(start + length)..-1]]
  end
end

p sect_sort([9, 7, 4, 2, 5, 3, 1, 8, 6], 2, 5)
# p sect_sort([1, 2, 5, 7, 4, 6, 3, 9, 8], 2)

# def sect_sort(a, s, l = 0)
#   a[0...s] + a[s..(l > 0 ? s + l - 1 : -1)].sort + (l > 0 ? a[s + l..-1] || [] : [])
# end
