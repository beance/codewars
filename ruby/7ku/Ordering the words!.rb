# frozen_string_literal: true
# Ordering the words!
# https://www.codewars.com/kata/55d7e5aa7b619a86ed000070/train/ruby

def order_word(s)
  return "Invalid String!" unless s.is_a?(String)
  return "Invalid String!" if s.empty?

  s.chars.sort.join
end


p order_word("Hello, World!")