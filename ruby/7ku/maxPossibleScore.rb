# frozen_string_literal: true

# maxPossibleScore
# https://www.codewars.com/kata/59656c69253c365e58000046/train/ruby

def max_possible_score(hash, arr)
  hash.values.sum + arr.map(&:to_s).sum { |v| hash[v.to_sym].nil? ? 0 : hash[v.to_sym] }
end

p max_possible_score({ RANDOMAGAIN: 21.035184680628927, RANDOMFIRST: 693.2138260488076, another: 5 },
                     %w[RANDOMAGAIN another])
