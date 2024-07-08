# frozen_string_literal: true
# Slaphead
# https://www.codewars.com/kata/57efab9acba9daa4d1000b30/train/ruby
#

def bald(x)
  str = x.tr("/", "-")
  case x.count('/')
  when 0 then [str, "Clean!"]
  when 1 then [str, "Unicorn!"]
  when 2 then [str, "Homer!"]
  when 3..5 then [str, "Careless!"]
  else [str, "Hobo!"]
  end
end

p bald("//-/-/----/---/--") #'Careless!' ---------------
