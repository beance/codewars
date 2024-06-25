# frozen_string_literal: true

# PopShift
# https://www.codewars.com/kata/57cec34272f983e17800001e/train/ruby
def pop_shift(array)
  len = array.length
  if len.even?
    [array[(len / 2)..-1].reverse, array[0..len / 2 - 1], '']
  elsif len == 1
    [array[0], '', '']
  else
    [array[(len / 2) + 1..-1].reverse, array[0..len / 2 - 1], array[(len / 2)]]
  end
end

p pop_shift('reusetestcasesbitcointakeovertheworldmaybewhoknowsperhaps')
# ["spahrepswonkohwebyamdlroweht","reusetestcasesbitcointakeove", "r"])
