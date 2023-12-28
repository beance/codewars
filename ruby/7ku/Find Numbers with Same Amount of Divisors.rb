# frozen_string_literal: true

# Find Numbers with Same Amount of Divisors
# https://www.codewars.com/kata/55f1614853ddee8bd4000014/train/ruby

def count_pairs_int(diff, n_max)
  max_limit = n_max + diff
  count_divs = Array.new(max_limit + 1, 1)

  (2..max_limit).each do |i|
    (i..max_limit).step(i) { |j| count_divs[j] += 1 }
  end

  (1...(n_max - diff)).count { |i| count_divs[i] == count_divs[i + diff] }
end
p count_pairs_int(3, 100)
