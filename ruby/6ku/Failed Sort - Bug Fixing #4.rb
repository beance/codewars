# frozen_string_literal: true

# Failed Sort - Bug Fixing #4
# https://www.codewars.com/kata/55c7f90ac8025ebee1000062/train/ruby

def sort_array(v)
  v.chars.sort_by(&:to_i).join("")
end

p sort_array("12345")
