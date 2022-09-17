# frozen_string_literal: true

# Friend or Foe?
# https://www.codewars.com/kata/55b42574ff091733d900002f
def friend(friends)
  friends.select { |e| e.size == 4 }
end

p friend(%w[Ryan Kieran Mark])
