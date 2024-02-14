# frozen_string_literal: true

# Find the Biggest Triangle
# https://www.codewars.com/kata/55f0a7d8c44c6f1438000013/train/ruby
#
require 'matrix'

def find_biggTriang(a)
  t = a.combination(3).map { |a| [a, Matrix[*a.map { |x| x + [1] }].det.abs / 2.0] }
  [a.size, t.size, t.count { |x| x[-1] != 0 }] + t.max_by(&:last)
end


