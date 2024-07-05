# Heads and Legs
# https://www.codewars.com/kata/574c5075d27783851800169e/train/crystal

def animals(heads, legs)
  return [0, 0] if heads == 0 && legs == 0
  return "No solutions" if heads < 0 || legs < 0
  return "No solutions" if heads == 0 || legs == 0

  chickens = (heads * 4 - legs) / 2
  cows = (legs - chickens * 2) / 4

  return "No solutions" if chickens < 0 || cows < 0
  return "No solutions" if (chickens.to_i * 2 + cows.to_i * 4) != legs
  [chickens, cows]
end

p animals(72, 200)
p animals(12, 25)
