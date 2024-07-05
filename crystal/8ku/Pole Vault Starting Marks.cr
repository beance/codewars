# Pole Vault Starting Marks
# https://www.codewars.com/kata/5786f8404c4709148f0006bf/train/crystal

M = (10.67 - 9.45) / (1.83 - 1.52)
B = 10.67 - M * 1.83

def starting_mark(height)
  (M * height + B).round(2)
end

