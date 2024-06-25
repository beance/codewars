# frozen_string_literal: true

# Simple Fun #399: Make Ascending Sequences
# https://www.codewars.com/kata/5be0f1786279697939000157/train/ruby

def make_sequences(n, memo = {})
  return 1 if n == 1
  return memo[n] if memo.key?(n)

  count = 1
  (1..n / 2).each do |i|
    count += make_sequences(i, memo)
  end
  memo[n] = count
end

p make_sequences(6)
