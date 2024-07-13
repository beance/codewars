# frozen_string_literal: true

# Simple elevator
# https://www.codewars.com/kata/52ed326b8df6540e06000029/train/ruby

def goto(level, button)
  return 0 if !level.is_a?(Integer) || !button.is_a?(String)

  button = button.to_i

  return 0 if level == button || level.negative? || level > 3 || button > 3

  button - level
end

p goto(1, '2')
# p goto(3, '1')
