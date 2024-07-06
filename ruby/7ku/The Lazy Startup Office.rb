# frozen_string_literal: true
# The Lazy Startup Office
# https://www.codewars.com/kata/578fdcfc75ffd1112c0001a1/train/ruby

def bin_rota(arr)
  arr.map.with_index { |a, i| i.odd? ? a.reverse : a }.flatten
end

p bin_rota ([ ["Stefan", "Raj",    "Marie"],
  ["Alexa",  "Amy",    "Edward"],
  ["Liz",    "Claire", "Juan"],
  ["Dee",    "Luke",   "Katie"] ])