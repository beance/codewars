# frozen_string_literal: true

# Pizza Payments
# https://www.codewars.com/kata/5b043e3886d0752685000009/train/ruby

def michael_pays(costs)
  return costs.round(2) if costs < 5
  kate_pays = costs / 3.0
  kate_pays <= 10 ? (costs - kate_pays).round(2) : (costs - 10).round(2)
end

p michael_pays(22)
# p michael_pays(4.325)
