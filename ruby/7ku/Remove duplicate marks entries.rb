# frozen_string_literal: true

# Remove duplicate marks entries
# https://www.codewars.com/kata/53ce85b149c4ca1cd900002e/train/ruby

def dataclean(values)
  return nil if values.nil?

  values.uniq { |x| x[0] }.sort_by { |x| x[1] }
end

p dataclean([['d', 1], ['d', 2], ['d', 3], ['E', 1], ['C', 5]])
# [["d",1], ["E",1], ["C",5]]
