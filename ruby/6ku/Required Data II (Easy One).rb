# frozen_string_literal: true

# Required Data II (Easy One)
# https://www.codewars.com/kata/560985a07add63e1a1000019/train/ruby

def given_nth_value(arr, k, str_)
  return "No values in the array" if arr.empty?
  return "Invalid entry list" unless arr.all? { |x| x.is_a?(Integer) }
  return "Valid entries: 'max' or 'min'" unless str_.downcase == "max" || str_.downcase == "min"
  s = str_.downcase == "min" ? 1 : -1
  arr.sort_by { |x| x * s }.uniq[k - 1] || "No way"
end

arr = [3, 3, -1, 10, 6, 8, -5, 'Yes', 4, 22, 31]
k= 4
str_ = "max"
p given_nth_value(arr, k, str_)
