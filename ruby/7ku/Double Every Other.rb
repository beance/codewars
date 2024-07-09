# frozen_string_literal: true

# Double Every Other
# https://www.codewars.com/kata/5809c661f15835266900010a/train/ruby
def double_every_other(num_array)
  num_array.map.with_index { |x, i| i.odd? ? x * 2 : x }
end

p double_every_other([1, 2, 3, 4])
