# frozen_string_literal: true
# Ironman Triathlon
# https://www.codewars.com/kata/57d001b405c186ccb6000304/train/ruby
#

def i_tri(s)
  return 'Starting Line... Good Luck!' if s == 0
  return "You're done! Stop running!" if s >= distance =140.60
  result = distance - s
  p result
  case
  when s < 2.5
    {:Swim => "#{format('%.2f', result)} to go!"}
  when s > 2.4 && s < 114.6
    {:Bike => "#{format('%.2f', result)} to go!"}
  when result < 10
    {:Run => "Nearly there!"}
  else
    {:Run => "#{format('%.2f', result)} to go!"}
  end
end

p i_tri(124)