# frozen_string_literal: true

# https://www.codewars.com/kata/526c7363236867513f0005ca/train/ruby

def is_leap_year(year)
  if (year % 100).zero? && !(year % 400).zero?
    false
  elsif (year % 400).zero?
    true
  elsif (year % 4).zero?
    true
  else
    false
  end
end

p is_leap_year(2015)
