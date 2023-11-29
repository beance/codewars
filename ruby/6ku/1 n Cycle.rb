# frozen_string_literal: true

# 1/n- Cycle
# https://www.codewars.com/kata/5a057ec846d843c81a0000ad/train/ruby

def cycle(n)
  return -1 if n <= 1 || n.even? || (n % 5).zero?

  remainder = 1
  seen = {}

  (1..n).each do |i|
    remainder = (remainder * 10) % n

    return i - seen[remainder] if seen[remainder]

    seen[remainder] = i
  end

  -1
end


p cycle(197)
