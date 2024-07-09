# frozen_string_literal: true

def max_diff(lst)
  lst.minmax { |a, b| b <=> a }.reduce(:-) || 0
end

p max_diff([0, 1, 2, 3, 4, 5, 6])
p max_diff([1, 2, 3, -4])