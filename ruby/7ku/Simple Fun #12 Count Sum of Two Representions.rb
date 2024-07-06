# frozen_string_literal: true

# Simple Fun #12: Count Sum of Two Representions
# https://www.codewars.com/kata/5884615cbd573356ab000050/train/ruby

def count_sum_of_two_representations(n, l, r)
  # (l..r).to_a.repeated_permutation(2)
  #   .select { |a, b| a + b == n }
  #   .map { |a| a.sort }.uniq.count

  count = 0
  (l..r).each do |a|
    b = n - a
    count += 1 if b >= a && b <= r
  end
  count
end

p count_sum_of_two_representations(6, 2, 4)
