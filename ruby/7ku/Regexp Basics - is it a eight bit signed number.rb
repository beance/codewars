# frozen_string_literal: true

# Regexp Basics - is it a eight bit signed number?
# https://www.codewars.com/kata/567ed73340895395c100002e

class String
  def signed_eight_bit_number?
    to_i.between?(-128, 127) && self == to_i.to_s
  end
end
