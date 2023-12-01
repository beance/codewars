# frozen_string_literal: true

# Spoonerize Me
# https://www.codewars.com/kata/56b8903933dbe5831e000c76/train/ruby

def spoonerize(words)
  words.gsub(/(.)(.* )(.)(.*)/, '\3\2\1\4')
end

p spoonerize('not picking')
