# frozen_string_literal: true

# Return the Missing Element
# https://www.codewars.com/kata/5299413901337c637e000004/train/ruby
def get_missing_element(seq)
  ((0..9).to_a - seq)[0]
end

p get_missing_element([0, 5, 1, 3, 2, 9, 7, 6, 4])
