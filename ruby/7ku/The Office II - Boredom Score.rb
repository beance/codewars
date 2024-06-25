# frozen_string_literal: true

# The Office II - Boredom Score
# https://www.codewars.com/kata/57ed4cef7b45ef8774000014/train/ruby

SCORE = { accounts: 1, finance: 2, canteen: 10, regulation: 3, trading: 6,
          change: 6, IS: 8, retail: 5, cleaning: 4, 'pissing about': 25 }.freeze

def boredom(staff)
  sum = staff.values.sum { |i| SCORE[i.to_sym] }
  if sum <= 80
    'kill me now'
  elsif sum < 100
    'i can handle this'
  else
    'party time!!'
  end
end

p boredom({ tim: 'change', jim: 'accounts',
            randy: 'canteen', sandy: 'change', andy: 'change', katie: 'IS',
            laura: 'change', saajid: 'IS', alex: 'trading', john: 'accounts',
            mr: 'finance' }) # eq('kill me now')
