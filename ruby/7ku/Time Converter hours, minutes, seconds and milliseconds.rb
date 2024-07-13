# frozen_string_literal: true

# Time Converter: hours, minutes, seconds and milliseconds
# https://www.codewars.com/kata/56b8b0ae1d36bb86b2000eaa/train/ruby

def convert(time)
  time.strftime('%H:%M:%S,%L')
end

p convert(Time.new(2016, 2, 8, 16, 42, 59))
p convert(Time.new(1951, 10, 31, 2, 2, 24.4))
