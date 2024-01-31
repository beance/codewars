# frozen_string_literal: true

# Array Leaders (Array Series #3)
# https://www.codewars.com/kata/5a651865fd56cb55760000e0/train/ruby
#

def array_leaders(numbers)
  numbers.select.with_index { |num, i| num > numbers[i + 1..-1].sum }
end

p array_leaders([1, 2, 3, 4, 0])
p array_leaders([16, 17, 4, 3, 5, 2])
