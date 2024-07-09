# frozen_string_literal: true

# Filter unused digits
# https://www.codewars.com/kata/55de6173a8fbe814ee000061/train/ruby

def unused_digits(*nums)
  '0123456789'.delete(*nums.to_s)
end

p unused_digits(12, 34, 56, 78)
