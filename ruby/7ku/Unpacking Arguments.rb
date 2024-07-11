# frozen_string_literal: true

# Unpacking Arguments
# https://www.codewars.com/kata/540de1f0716ab384b4000828/train/ruby
def spread(func, args)
  func.call(*args)
end

p spread(->(x, y) { x + y }, [1, 2])
