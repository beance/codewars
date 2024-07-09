# frozen_string_literal: true

# Hells Kitchen
# https://www.codewars.com/kata/57d1f36705c186d018000813/train/ruby
def gordon(a)
  a.split.map { |e| "#{e.upcase.tr('AEIOU', '@****')}!!!!" }.join(' ')
end

p gordon('are you stu pid') # '@R*!!!! Y**!!!! ST*!!!! P*D!!!!'
