# frozen_string_literal: true

# Return a string's even characters.
# https://www.codewars.com/kata/566044325f8fddc1c000002c

def even_chars(st)
  return 'invalid string' if st.size < 2 || st.size > 100

  st.chars.select.with_index { |_e, i| i.odd? }
end

p even_chars('abcdefghijklm')
