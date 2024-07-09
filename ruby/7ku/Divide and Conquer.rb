# frozen_string_literal: true

# Divide and Conquer
# https://www.codewars.com/kata/57eaec5608fed543d6000021/train/ruby
#
def div_con(x)
  x.sum { |i| i.is_a?(String) ? -i.to_i : i }
end

p div_con(['5', '0', 9, 3, 2, 1, '9', 6, 7])
