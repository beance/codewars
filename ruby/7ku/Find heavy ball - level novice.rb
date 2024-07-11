# frozen_string_literal: true

# Find heavy ball - level: novice
# https://www.codewars.com/kata/544047f0cf362503e000036e/train/ruby

def find_ball(scales)
  (0..7).step(2) do |i|
    result = scales.get_weight([i], [i + 1])
    return result.positive? ? i + 1 : i if result.nonzero?
  end
end
