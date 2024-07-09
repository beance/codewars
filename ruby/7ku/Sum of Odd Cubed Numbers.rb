# frozen_string_literal: true
# Sum of Odd Cubed Numbers
# https://www.codewars.com/kata/580dda86c40fa6c45f00028a/train/ruby

def cube_odd(arr)
  arr.sum do |e|
    return nil unless e.is_a?(Integer)
    e.odd? ? e ** 3 : 0
  end
end

p cube_odd([1, 2, 3, 4])