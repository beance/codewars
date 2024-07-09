# frozen_string_literal: true
# Birthday I - Cake
# https://www.codewars.com/kata/5805ed25c2799821cb000005/train/ruby

def cake(candles,debris)
  return "That was close!" if candles == 0
  debris.chars.map.with_index { |e, i| i.odd? ? e.ord - 96 : e.ord }.sum < (candles * 0.7) ? "That was close!" : "Fire!"
end


p cake(900, "abcdef")
p cake(56, "ifkhchlhfd")
p cake(256, "aaaaaddddr")
p cake(333, "jfmgklfhglbe")
p cake(12, "jaam")
p cake(675, "uohyqjvif")
p cake(0, "wm")