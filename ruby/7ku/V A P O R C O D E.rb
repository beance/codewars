# frozen_string_literal: true

# V A P O R C O D E
# https://www.codewars.com/kata/5966eeb31b229e44eb00007a/train/ruby

def vaporcode(s)
  s.tr(' ', '').chars.map(&:upcase).join('  ')
end
p vaporcode('Lets go to the movies')
