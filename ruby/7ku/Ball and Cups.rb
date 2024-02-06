# frozen_string_literal: true
# Ball and Cups
# https://www.codewars.com/kata/5b715fd11db5ce5912000019/train/ruby

def cup_and_balls(ball, pairs)
  pairs.reduce(ball) { |current_ball, (a, b)| a == current_ball ? b : (b == current_ball ? a : current_ball) }
end

p cup_and_balls(2,[[1,2]])