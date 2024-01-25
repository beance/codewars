# frozen_string_literal: true

# Ones' Complement
# https://www.codewars.com/kata/59b11f57f322e5da45000254/train/ruby

def ones_complement(binary_number)
  binary_number.tr('01', '10')
end

p ones_complement('1101')
