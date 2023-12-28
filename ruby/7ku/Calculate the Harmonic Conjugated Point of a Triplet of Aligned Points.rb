# frozen_string_literal: true
# Calculate the Harmonic Conjugated Point of a Triplet of Aligned Points
#  https://www.codewars.com/kata/5600e00e42bcb7b9dc00014e/train/ruby

def harmon_pointTrip(a, b, c)
  ((((a.to_f - c) / (b - c)) * b + a) / (1 + (a.to_f - c) / (b - c))).round(4)
end


p harmon_pointTrip(3, 9, 18)