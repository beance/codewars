# frozen_string_literal: true

# Simple Fun #149: Next Day Of Week
# https://www.codewars.com/kata/58aa9662c55ffbdceb000101/train/ruby

def next_day_of_week(current_day, available_week_days)
  binary_representation = available_week_days.to_s(2).rjust(7, "0").reverse
  i = current_day + 1
  loop do
    i = 1 if i > 7
    return i if binary_representation[i - 1] == "1"
    i += 1
  end
end

p next_day_of_week(7, 124)
