# frozen_string_literal: false

# https://www.codewars.com/kata/5911385598dcd432ae000004/train/ruby

def is_divisible_by_6(s)
  arr = s.chars
  e_index = arr.index('*')
  new_arr = []

  10.times do |i|
    arr[e_index] = i
    elem = arr.join.to_i
    new_arr << elem.to_s if (elem % 6).zero?
  end
  new_arr
end





p is_divisible_by_6('1*0')
