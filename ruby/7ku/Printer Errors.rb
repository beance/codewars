# frozen_string_literal: true

# Printer Errors
# https://www.codewars.com/kata/56541980fa08ab47a0000040

def printer_error(s)
  "#{s.length - s.each_codepoint.to_a.reject { |e| e > 'm'.codepoints[0] }.count}/#{s.length}"
end

def printer_error(s)
  "#{s.count('n-z')}/#{s.length}"
end

s = 'aaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz'
p printer_error(s) # "3/56"
