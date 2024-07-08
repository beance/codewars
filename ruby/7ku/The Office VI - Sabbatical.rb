# frozen_string_literal: true
# The Office VI - Sabbatical
# https://www.codewars.com/kata/57fe50d000d05166720000b1/train/ruby

def sabb(s, val, happiness)
  s.downcase.count('sabbatical') + val + happiness > 22 ? 'Sabbatical! Boom!' : 'Back to your desk, boy.'
end

p sabb('Can I have a sabbatical?', 5, 5) # "Sabbatical! Boom!"
