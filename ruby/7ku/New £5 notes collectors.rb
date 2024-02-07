# frozen_string_literal: true
# New £5 notes collectors!
# https://www.codewars.com/kata/58029cc9af749f80e3001e34/train/ruby

def get_new_notes(salary,bills)
  [(salary - bills.sum).div(5), 0].max
end

p get_new_notes(2000, [500, 160, 400])