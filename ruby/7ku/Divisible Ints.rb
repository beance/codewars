# frozen_string_literal: true

# Divisible Ints
# https://www.codewars.com/kata/566859a83557837d9700001a

def get_count(n)
  return 0 unless n.is_a?(Integer) && n.positive?

  str = n.to_s
  count = 0

  (0...str.length).each do |i|
    (i...str.length).each do |j|
      sub = str[i..j]
      next if sub.to_i == 0
      count += 1 if n % sub.to_i == 0
    end
  end

  count - 1
end

p get_count(1230)
