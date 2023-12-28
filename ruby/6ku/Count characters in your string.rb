# frozen_string_literal: true
# Count characters in your string
# https://www.codewars.com/kata/52efefcbcdf57161d4000091/train/ruby

def count_chars(s)
  s.chars.group_by(&:itself).map { |k, v| [k, v.length] }.to_h
end