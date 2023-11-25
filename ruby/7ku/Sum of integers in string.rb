# frozen_string_literal: true

# https://www.codewars.com/kata/598f76a44f613e0e0b000026/train/ruby

def sum_of_integers_in_string(s)
  s.scan(/\d+/).sum(&:to_i)
end

p sum_of_integers_in_string('8428e64550yr-219970093286353U5534P')
