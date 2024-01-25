# frozen_string_literal: true

# Paperboy
# https://www.codewars.com/kata/56ed5f13c4e5d6c5b3000745/train/ruby

def cheapest_quote(n)
  if n < 5
    n * 0.10
  elsif n < 10
    0.49 + cheapest_quote(n % 5)
  elsif n < 20
    0.97 + cheapest_quote(n % 10)
  elsif n < 40
    1.93 + cheapest_quote(n % 20)
  else
    (n / 40) * 3.85 + cheapest_quote(n % 40)
  end.round(2)
end

p cheapest_quote(5)
