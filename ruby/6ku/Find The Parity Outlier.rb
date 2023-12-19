# frozen_string_literal: true

# Find The Parity Outlier
# https://www.codewars.com/kata/5526fc09a1bbd946250002dc/train/ruby

def find_outlier(integers)
  integers.partition(&:odd?).find(&:one?).first
end

p find_outlier([1, 2, 3])
