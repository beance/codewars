# frozen_string_literal: true
# Populate hash with array keys and default value
# https://www.codewars.com/kata/51c38e14ea1c97ffaf000003/train/ruby

def solution(keys, default_value)
  Hash[keys.product([default_value])]
end