# frozen_string_literal: true
# Well of Ideas - Harder Version
# https://www.codewars.com/kata/57f22b0f1b5432ff09001cab/train/ruby

def well(x)
  case x.flatten.count { |x| x.to_s.downcase == 'good' }
  when 0 then 'Fail!'
  when 1..2 then 'Publish!'
  else
    'I smell a series!'
  end
end

p well([['bad', 'bAd', 'bad'], ['bad', 'bAd', 'bad'], ['bad', 'bAd', 'bad']]) #'Fail!'
p well([['gOOd', 'bad', 'BAD', 'bad', 'bad'], ['bad', 'bAd', 'bad'], ['GOOD', 'bad', 'bad', 'bAd']]) # 'Publish!'
