# frozen_string_literal: true

# Zip it!
# https://www.codewars.com/kata/56aaf25213edd3a88a000002/train/ruby



class Array
  def zip(arr, &block)
    (0...[length, arr.length].min).map { |i| block.call(self[i], arr[i]) }
  end
end

a = [1, 2, 3, 4, 5]
b = ["a", "b", "c", "d", "e"]
p a.zip(b) { |x, y| x.to_s + y }
