# frozen_string_literal: true

# Debug Basic Calculator
# https://www.codewars.com/kata/56368f37d464c0a43c00007f/train/ruby

def calculate(a, o, b)
  return nil if !%w[+ - * /].include?(o) || (b == 0 and o == '/')

  a.send(o.to_sym, b)
end

p calculate(0, '**', 0)
