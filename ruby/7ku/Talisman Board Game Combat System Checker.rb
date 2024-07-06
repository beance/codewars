# frozen_string_literal: true

# Talisman Board Game Combat System Checker
# https://www.codewars.com/kata/541837036d821665ee0006c2/train/ruby

def get_required(player, enemy)
  p = player[0] + player[1]
  e = enemy[0] + enemy[1]

  return "Random" if p == e
  return "Auto-win" if p >= e + 6
  return "Auto-lose" if p + 6 <= e
  return ("#{e + 7 - p}".to_i..6) if p > e
  return (1.."#{p + 5 - e}".to_i) if p + 5 > e
  "Pray for a tie!"
end

p get_required([9, 1], [2, 0])
p get_required([7, 0], [8, 1])
