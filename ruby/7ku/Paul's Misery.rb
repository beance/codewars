# frozen_string_literal: true
# Paul's Misery
# https://www.codewars.com/kata/57ee31c5e77282c24d000024/train/ruby

def paul(x)
  points = { kata: 5, 'Petes kata': 10, 'life': 0,  'eating': 1 }
  case x.sum { |a| points[a.to_sym] }
  when 0...40 then 'Super happy!'
  when 40...70 then 'Happy!'
  when 70...100 then 'Sad!'
  when 100..Float::INFINITY then 'Miserable!'
  end
end

p paul(['life', 'eating', 'life'])