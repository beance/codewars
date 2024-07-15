# frozen_string_literal: true

# Count the Ones
# https://www.codewars.com/kata/5519e930cd82ff8a9a000216/train/ruby
def hamming_weight(x)
  x.to_s(2).count('1')
end

p hamming_weight(10)
