# frozen_string_literal: true
# Row Weights
# https://www.codewars.com/kata/5abd66a5ccfd1130b30000a9/train/ruby

def row_weights(array)
  array.partition.with_index { |_, i| i.even? }.map(&:sum)
end

p row_weights([70,58,75,34,91]) #[236,92]