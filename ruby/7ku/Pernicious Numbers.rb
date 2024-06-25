# frozen_string_literal: true

# Pernicious Numbers
# https://www.codewars.com/kata/56e195d02bb22479e50016af/train/ruby

require 'prime'
def pernicious(n)
  return 'No pernicious numbers' if n <= 2 || n.nil?

  (2..n.floor).select { |i| i.to_s(2).count('1').to_i.prime? }
end

p pernicious 42
