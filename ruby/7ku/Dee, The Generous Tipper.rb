# frozen_string_literal: true

# Dee, The Generous Tipper
# https://www.codewars.com/kata/568c3498e48a0231d200001f/train/ruby

def calc_tip(p, r)
  p = p.to_s[-1].to_i >= 5 ? p.round(-1, half: :up) : p.round(-1, half: :down)
  digits = p.digits
  digits.shift
  p = digits.reverse.join.to_i

  case r
  when 1
    p + 1
  when 0
    p == 0 ? 0 : p - 1
  when -1
    [0, (p / 2).floor - 1].max
  end
end

def calc_tip(price, rating)
  price = price.round(-1)
  base_tip = price / 10
  tip = case rating
        when 1 then base_tip + 1
        when 0 then base_tip - 1
        when -1 then base_tip / 2 - 1
  end

  [0, tip].max
end

p calc_tip(4, 1)
