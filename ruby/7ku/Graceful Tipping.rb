# frozen_string_literal: true

# Graceful Tipping
# https://www.codewars.com/kata/5eb27d81077a7400171c6820

def graceful_tipping(bill)
  result = (bill * 1.15).ceil
  return result if result < 10

  exp = Math.log10(result).floor - 1
  mod_op = 5 * 10**exp
  result += (mod_op - (result % mod_op)) if (result % mod_op).positive?
  result
end

p graceful_tipping(7)
