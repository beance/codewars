# frozen_string_literal: true
# All Star Code Challenge #31
# https://www.codewars.com/kata/5866f10311ceec6ac10001e8/train/ruby

def help_jesse(arr)
  arr.map do |i|
    note = " (#{i.note})" if i.note
    "Pour #{i.amount} mL of #{i.solution} into a #{i.instrument}#{note}"
  end
end