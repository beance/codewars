# frozen_string_literal: true

# The Office I - Outed
# https://www.codewars.com/kata/57ecf6efc7fe13eb070000e1/train/ruby

def outed(meet, boss)
  total_score = meet.values.sum + meet[boss.to_sym] * 2
  total_score / meet.values.length > 5 ? 'Nice Work Champ!' : 'Get Out Now!'
end

p outed({ tim: 2, jim: 4, randy: 0, sandy: 5, andy: 8, katie: 6, laura: 2, saajid: 2, alex: 3, john: 2, mr: 8 }, 'john')
