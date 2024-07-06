# frozen_string_literal: true

# Exclamation marks series #18: a simple slot machine that only contains exclamation marks and question marks
# https://www.codewars.com/kata/57fb4b289610ce39f70000de/train/ruby

def slot(s)
  return 1000 if s == "!!!!!" || s == "?????"
  return 800 if s.include?("!!!!") || s.include?("????")
  return 500 if %w[!!!?? ???!! ??!!! !!???].include?(s)
  return 300 if s.include?("!!!") || s.include?("???")
  return 200 if %w[!!?!! ??!?? !!??! ??!!? !??!! ?!!??].include?(s)
  return 100 if s.include?("??") || s.include?("!!")
  0
end


p slot("!!!!!") #=== 1000
p slot("!!!!?") #=== 800
p slot("!!!??") #=== 500

p slot("!!!?!") #=== 300
p slot("!!?!!") #=== 200
p slot("!!?!?") #=== 100
p slot("!?!?!") #=== 0
