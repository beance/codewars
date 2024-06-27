# frozen_string_literal: true

# Simple Fun #109: Segment Cover
# https://www.codewars.com/kata/589ac16a0cccbff11d000115/train/ruby


def segment_cover(a, l)
  return 0 if a.empty?
  a.sort!
  count = 0
  i = 0
  n = a.size

  loop do
    break if i >= n
    count += 1
    start_point = a[i]

    loop do
      break if i >= n || a[i] > start_point + l
      i += 1
    end
  end

  count
end



p segment_cover([1, 3, 4, 5, 8],3) #2
p segment_cover([-7, -2, 0, -1, -6, 7, 3, 4],4) #3
# p segment_cover([1, 5, 2, 4, 3],1) #3
# p segment_cover([1, 10, 100, 1000],1) #4

