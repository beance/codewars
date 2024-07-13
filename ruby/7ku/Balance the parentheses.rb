# frozen_string_literal: true

# Balance the parentheses
# https://www.codewars.com/kata/5d8365b570a6f6001519ecc8/train/ruby

def fix_parentheses(str)
  opening_count = 0
  closing_count = 0

  str.each_char do |char|
    if char == '('
      opening_count += 1
    elsif char == ')'
      opening_count.positive? ? opening_count -= 1 : closing_count += 1
    end
  end

  '(' * closing_count + str + ')' * opening_count
end

p fix_parentheses('))))(()(')
