# frozen_string_literal: true
# Find the stray number
# https://www.codewars.com/kata/57f609022f4d534f05000024/train/ruby
# frozen_string_literal: true

def stray(numbers)
  numbers.tally.key(1)
end
