# frozen_string_literal: true

# Strange Strings Parser!
# https://www.codewars.com/kata/584d88622609c8bda30000cf/train/ruby

def word_splitter(string)
  string.scan(/[\w.-]+/)
end

p word_splitter('RADIO+FREQ+12500+NW+1600+END')
p word_splitter('320000;56C*7200RPM#MODE%65>LATCH?ON')
