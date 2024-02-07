# frozen_string_literal: true

# Simple Fun #39: Switch Lights
# https://www.codewars.com/kata/5888145122fe8620950000f0/train/ruby

def switch_lights(a)
  a.each_index do |i|
    a[0..i] = a[0..i].map { |candle| 1 - candle } if a[i] == 1
  end
  a
end

def switch_lights(a)
  a.map.with_index{|s, idx| (a[idx..-1].count(1) + a[idx]) % 2}
end

p switch_lights([1, 1, 1, 1, 1])
