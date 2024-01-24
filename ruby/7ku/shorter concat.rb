# frozen_string_literal: true

#
# shorter concat [reverse longer]
# https://www.codewars.com/kata/54557d61126a00423b000a45/train/ruby

def shorter_reverse_longer(a, b)
  a.length < b.length ? a + b.reverse + a : b + a.reverse + b
end

p shorter_reverse_longer("first", "abcde")
