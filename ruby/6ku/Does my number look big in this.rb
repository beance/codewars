# frozen_string_literal: true

# Does my number look big in this?
# https://www.codewars.com/kata/5287e858c6b5a9678200083c/train/ruby

def narcissistic?(value)
  value.digits.map { |i| i**value.to_s.size }.sum == value
end

p narcissistic?(153)
