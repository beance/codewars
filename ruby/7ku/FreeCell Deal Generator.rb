# frozen_string_literal: true
# FreeCell Deal Generator
# https://www.codewars.com/kata/64eca9a7bc3127082b0bc7dc/train/ruby

DECK = ["AC", "AD", "AH", "AS", "2C", "2D", "2H", "2S", "3C", "3D", "3H", "3S", "4C", "4D", "4H", "4S", "5C", "5D", "5H", "5S", "6C", "6D", "6H", "6S", "7C", "7D", "7H", "7S", "8C", "8D", "8H", "8S", "9C", "9D", "9H", "9S", "TC", "TD", "TH", "TS", "JC", "JD", "JH", "JS", "QC", "QD", "QH", "QS", "KC", "KD", "KH", "KS"]
def deal(n)
  deck = DECK.dup
  res = []
  state = n
  degree32 = 2**31
  degree16 = 2**16
  deck.size.times do |i|
    state = ((state * 214013 + 2531011) % degree32)
    index = (state / degree16) % deck.size
    res << deck[index]
    deck[index] = deck.last
    deck.pop
  end
  res
end


p deal(1)
