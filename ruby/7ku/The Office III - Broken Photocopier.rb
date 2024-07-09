# frozen_string_literal: true

# The Office III - Broken Photocopier
# https://www.codewars.com/kata/57ed56657b45ef922300002b/train/ruby
#
def broken(x)
  x.tr('10', '01')
end

p broken('1')
