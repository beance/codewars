# frozen_string_literal: true
# Bouncing Balls
# https://www.codewars.com/kata/5544c7a5cb454edb3c000047/train/ruby


def bouncingBall(h, bounce, window)
  return -1 if h <= 0 || bounce <= 0 || bounce >= 1 || h <= window

  count = 1
  while h * bounce > window
    count += 2
    h *= bounce
  end

  count
end

p bouncingBall(30, 0.66, 1.5) # 15
