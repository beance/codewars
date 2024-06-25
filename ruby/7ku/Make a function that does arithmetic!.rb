# frozen_string_literal: true

# Make a function that does arithmetic!
# https://www.codewars.com/kata/583f158ea20cfcbeb400000a

def arithmetic(a, b, operator)
  case operator
  when 'add' then a + b
  when 'subtract' then a - b
  when 'multiply' then a * b
  when 'divide' then a / b
  end
end

p arithmetic(1, 2, 'add')
