# frozen_string_literal: true

# Simple Fun #205: Split Exp
# https://www.codewars.com/kata/58fd9f6213b00172ce0000c9/train/ruby
#

def split_exp(n)
  left, right = n.split(".")

  len = left.length
  left = left.chars.map.with_index do |e, i|
    e + ("0" * (len - i - 1)) if e != "0"
  end.compact

  if right
    len = right.length
    return left + right.reverse.chars.map.with_index do |e, i|
      ("." + "0" * (len - i - 1)) + e if e != "0"
    end.reverse.compact
  end

  left
end

p split_exp("7970521.5544") == [
  "7000000",
  "900000",
  "70000",
  "500",
  "20",
  "1",
  ".5",
  ".05",
  ".004",
  ".0004"
]
p split_exp("7496314")
