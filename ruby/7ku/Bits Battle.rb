# frozen_string_literal: true

# Bits Battle
# https://www.codewars.com/kata/58856a06760b85c4e6000055/train/ruby
def bitsBattle(numbers)
  odd, even = numbers.reject(&:zero?).partition(&:odd?)
  case odd.sum { |e| e.to_s(2).count('1') } <=> even.sum { |e| e.to_s(2).count('0') }
  when 1 then 'odds win'
  when -1 then 'evens win'
  else 'tie'
  end
end

p bitsBattle([1, 13, 16])
