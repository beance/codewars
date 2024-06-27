# frozen_string_literal: true

# Quadratic Enumerator
# https://www.codewars.com/kata/5aee96e22c5061ee90000024/train/ruby

def quadratic_enum(a, b, c, start: 0, step: 1)
  Enumerator.new do |y|
    loop do
      y << [start, a * start**2 + b * start + c]
      start += step
    end
  end
end

p quadratic_enum(1, 0, 0,start: 2).take(5)
