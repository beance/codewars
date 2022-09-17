# frozen_string_literal: true

# Sum of the first nth term of Series
# https://www.codewars.com/kata/555eded1ad94b00403000071
#
def series_sum(n)
  format('%.2f', (0...n).sum { |i| 1.0 / (i * 3 + 1) })
end


