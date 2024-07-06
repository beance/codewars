# frozen_string_literal: true
# Holiday V - SeaSick Snorkelling
# https://www.codewars.com/kata/57e90bcc97a0592126000064/train/ruby

def sea_sick(s)
  changes = s.chars.each_cons(2).count { |a, b| a != b }
  changes.to_f / s.length > 0.2 ? "Throw Up" : "No Problem"
end



p sea_sick("~") #("No Problem")
p sea_sick("_~~~~~~~_~__~______~~__~~_~~") #("Throw Up")
p sea_sick("______~___~_") #("Throw Up")
p sea_sick("____") #("No Problem")
p sea_sick("_~~_~____~~~~~~~__~_~") #("Throw Up")
