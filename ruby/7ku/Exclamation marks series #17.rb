# frozen_string_literal: true

# Exclamation marks series #17: Put the exclamation marks and question marks on the balance - are they balanced?
# https://www.codewars.com/kata/57fb44a12b53146fe1000136/train/ruby

def balance(left, right)
  l = left.chars.sum { |v| v == "!" ? 2 : 3 }
  r = right.chars.sum { |v| v == "!" ? 2 : 3 }
  return "Left" if l > r
  return "Balance" if l == r
  "Right"
end
