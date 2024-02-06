# frozen_string_literal: true

# Sub-array elements sum
# https://www.codewars.com/kata/5b5e0ef007a26632c400002a/train/ruby

def elements_sum(xss, default = 0)
  xss.each_index.sum { |i| xss[i][xss.size - i - 1] || default }
end

p elements_sum([[3, 2, 1, 0], [4, 6, 5, 3, 2], [9, 8, 7, 4]])
