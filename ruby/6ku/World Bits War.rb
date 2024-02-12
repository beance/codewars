# frozen_string_literal: true

# World Bits War
# https://www.codewars.com/kata/58865bfb41e04464240000b0/train/ruby

def bits_war(numbers)
  even, odd = numbers.partition { |i| i.even? }
  even = even.sum do |i|
    i.negative? ? i.to_s(2).count("1") * -1 : i.to_s(2).count("1")
  end
  odd = odd.sum do |i|
    i.negative? ? i.to_s(2).count("1") * -1 : i.to_s(2).count("1")
  end
  if even > odd
    "evens win"
  elsif odd > even
    "odds win"
  else
    "tie"
  end
end

p bits_war([7, -3, 20])
