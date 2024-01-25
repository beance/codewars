# frozen_string_literal: true

# Temperature analysis I
# https://www.codewars.com/kata/588e0f11b7b4a5b373000041/train/ruby

def lowest_temp(t)
  t.split.map(&:to_i).min
end
p lowest_temp('-1 50 -4 20 22 -7 0 10 -8')
