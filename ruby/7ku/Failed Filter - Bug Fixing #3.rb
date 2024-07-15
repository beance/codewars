# frozen_string_literal: true

# Failed Filter - Bug Fixing #3
# https://www.codewars.com/kata/55c606e6babfc5b2c500007c/train/ruby

def filter_numbers(string)
  string.tr('1234567890', '')
end

p filter_numbers('a1b2c3')
