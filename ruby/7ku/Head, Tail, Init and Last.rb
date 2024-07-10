# frozen_string_literal: true

# Head, Tail, Init and Last
# https://www.codewars.com/kata/54592a5052756d5c5d0009c3/train/ruby

def head(arr)
  arr[0]
end

def tail(arr)
  arr[1..-1]
end

def init(arr)
  arr[0..-2]
end

def last(arr)
  arr[-1]
end

p head([5, 1])
p init [1, 2, 3, 4, 5]
p tail [1, 2, 3, 4, 5]
p last [1, 2, 3, 4, 5]
