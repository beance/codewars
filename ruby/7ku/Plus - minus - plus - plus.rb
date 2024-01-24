# frozen_string_literal: true

# Plus - minus - plus - plus - ... - Count
# https://www.codewars.com/kata/5bbb8887484fcd36fb0020ca/train/ruby
def catch_sign_change(arr)
  arr.each_cons(2).count { |x, y| (x >= 0) != (y >= 0) }
end

arr = [1, 5, 2, -4]
p catch_sign_change(arr)
