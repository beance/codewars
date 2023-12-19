# frozen_string_literal: true

# Multiples by permutations
# https://www.codewars.com/kata/55f1a53d9c77b0ed4100004e/train/ruby

def search_permMult(nMax, k)
  (1..nMax / k).count { |i| (i * k).to_s.chars.sort == i.to_s.chars.sort }
end


p search_permMult(10000, 4)
