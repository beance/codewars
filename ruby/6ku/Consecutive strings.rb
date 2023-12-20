# frozen_string_literal: true

# Consecutive strings
# https://www.codewars.com/kata/56a5d994ac971f1ac500003e/train/ruby

def longest_consec(strarr, k)
  return "" unless k.between?(1, strarr.length)
  strarr.each_cons(k).map(&:join).max_by(&:length) || ""
end
p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"],3)