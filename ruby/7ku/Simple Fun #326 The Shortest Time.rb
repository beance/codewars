# frozen_string_literal: true
# Simple Fun #326: The Shortest Time
# https://www.codewars.com/kata/5950a4bfc6bf4f433f000031/train/ruby
#

def shortest_time(n, m, speeds)
  return 0 if n == 1

  t = (m - n).abs * speeds[0]
  open = speeds[1]
  close = speeds[2]
  floors = n - 1
  elevator = (floors * speeds[0]) + open + close + t + open
  walk = (n - 1) * speeds[3]

  elevator <= walk ? elevator : walk
end


p shortest_time(5,6,[1,2,3,10])