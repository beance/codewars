# frozen_string_literal: true

# Write Number in Expanded Form
# https://www.codewars.com/kata/5842df8ccbd22792a4000245/train/ruby

def expanded_form(num)
  num.digits.each_with_index.map { |n, i| n.zero? ? "" : "#{n}#{"0" * i}" }.reverse.reject(&:empty?).join(" + ")
end

p expanded_form(70304)
# p expanded_form(12)
