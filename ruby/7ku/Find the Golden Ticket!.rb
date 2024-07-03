# frozen_string_literal: true
# Find the Golden Ticket!
# https://www.codewars.com/kata/59828f1954419acdff00002e/train/ruby

def finder(box)
  box.index([true]) || 'There is no golden ticket!'
end

p finder([[false],[false],[false],[false],[false]])