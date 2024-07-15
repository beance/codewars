# frozen_string_literal: true

# Binary Calculator
# https://www.codewars.com/kata/546ba103f0cf8f7982000df4/train/ruby
def calculate(n1, n2, operator)
  operations = {
    'subtract' => ->(a, b) { a - b },
    'multiply' => ->(a, b) { a * b },
    'add' => ->(a, b) { a + b }
  }

  operations[operator].call(n1.to_i(2), n2.to_i(2)).to_s(2)
end

p calculate('1', '1', 'subtract')
p calculate('1', '1', 'add')
