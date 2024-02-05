# frozen_string_literal: true

# Every nth array element. (Basic)
# https://www.codewars.com/kata/5753b987aeb792508d0010e2/train/ruby

class Array
  def every(interval = 1, start_index = 0)
    (start_index...size).step(interval).map { |i| self[i] }
  end
end

p [0, 1, 2, 3, 4].every(1, 3)
