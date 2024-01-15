# Sum of Triangular Numbers
# https://www.codewars.com/kata/580878d5d27b84b64c000b51/train/ruby

def sum_triangular_numbers(n)
  return 0 if n < 0

  n * (n + 1) * (n + 2) / 6
end
