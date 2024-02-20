# frozen_string_literal: true

# Disgruntled Employee
# https://www.codewars.com/kata/541103f0a0e736c8e40011d5/train/ruby

def off(switches)
  (1..Math.sqrt(switches)).map { |i| i * i }
end
p off(1000)
