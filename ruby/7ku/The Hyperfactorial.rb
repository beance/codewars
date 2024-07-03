# frozen_string_literal: true

# The Hyperfactorial
# https://www.codewars.com/kata/6324786fcc1a9700260a2147/train/ruby

def hyperfact(num)
  modulo = 1_000_000_007
  result = 1

  (1..num).each do |i|
    result = (result * i**i) % modulo
  end

  result
end


puts hyperfact(100)
