# frozen_string_literal: true

# Simple Fun #40: Timed Reading
# https://www.codewars.com/kata/588817db5fb13af14a000020/train/ruby

def timed_reading(max_length, text)
  text.scan(/\b\w+\b/).count { |i| i.length <= max_length }
end

p timed_reading(3, 'This play was good for us.')
p timed_reading(1, '...')
p timed_reading(4, "The Fox asked the stork, 'How is the soup?'")
