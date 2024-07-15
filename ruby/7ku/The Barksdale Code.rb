# frozen_string_literal: true

# The Barksdale Code
# https://www.codewars.com/kata/573d498eb90ccf20a000002a/train/ruby

def decode(string)
  string.tr('1234567890', '9876043215')
end

p decode('4103432323')
