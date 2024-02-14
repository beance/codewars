# frozen_string_literal: false

# Oracle: Coin Method
# https://www.codewars.com/kata/56e60e54517a8c167e00154d/train/ruby

def oracle(lines)
  hexagram = ""
  num = {one: 1, two: 2, three: 3, four: 4, five: 5, six: 6}
  lines.sort_by! { |line| -num[line[0].to_sym] }
  lines.each do |line|
    hexagram += determine_line(line[1..3]) + "\n"
  end
  hexagram.chomp
end

def determine_line(flips)
  case flips.count("t")
  when 0
    "----o----"
  when 1
    "---- ----"
  when 2
    "---------"
  when 3
    "----x----"
  end
end

p oracle([["two", "h", "h", "t"], ["six", "t", "h", "t"], ["four", "t", "t", "t"], ["one", "h", "t", "h"], ["three", "h", "h", "h"], ["five", "t", "t", "h"]])
# "---------\n---------\n----x----\n----o----\n---- ----\n---- ----"
