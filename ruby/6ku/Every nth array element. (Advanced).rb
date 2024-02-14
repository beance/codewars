# frozen_string_literal: true

# Every nth array element. (Advanced)
# https://www.codewars.com/kata/57531a8605067f3b8d001083/train/ruby

class Array
  def every(interval = 1, start_index = 0)
    raise ArgumentError, "interval can't be 0" if interval.zero?
    return [] if start_index >= size
    if interval >= 0
      v = self[start_index..-1]
      v ? v.select.with_index { |x, i| i % interval < 1 } : []
    else
      self[0..start_index].reverse.select.with_index { |x, i| i % -interval < 1 }
    end
  end
end

# p [0, 1, 2, 3, 4].every(3, 4)
# p [0, 1, 2, 3, 4].every(-2, -3)
# p [0, 1, 2, 3, 4].every(-2, -1)
# p [0,1,2,3,4].every( 1,0)
p [{50 => "L"}, 3, 0, :paper, {100 => "C"}, 0.7783613561615067, "c", :scissors].every(-5, -3)
