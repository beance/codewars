# frozen_string_literal: true
# Hit Count
# https://www.codewars.com/kata/57b6f850a6fdc76523001162/train/ruby

def counter_effect(hit_count)
  hit_count.chars.map { |x| (0..x.to_i).to_a }
end


p counter_effect("1250")
# [[0, 1], [0, 1, 2], [0, 1, 2, 3, 4, 5], [0]]
