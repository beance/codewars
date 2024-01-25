# frozen_string_literal: true

# Sum Times Tables
# https://www.codewars.com/kata/551e51155ed5ab41450006e1/train/ruby

def sum_times_tables(table, a, b)
  table.sum * (a..b).sum
end

p sum_times_tables([5, 4, 7, 8, 9, 6, 3, 2, 10, 1], 1, 10)
# p sum_times_tables([2,3],1,3)
