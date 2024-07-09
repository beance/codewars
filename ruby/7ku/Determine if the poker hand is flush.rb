# frozen_string_literal: true
# Determine if the poker hand is flush
# https://www.codewars.com/kata/5acbc3b3481ebb23a400007d/train/ruby

def is_flush?(hand)
  hand.map { |card| card.scan(/[HSDC]/) }.uniq.size == 1
end

p is_flush?(["AS", "3S", "9S", "KS", "4S"])
p is_flush?(["QD", "4D", "10D", "KD", "5D"])