# frozen_string_literal: true
# Scrolling Text
# https://www.codewars.com/kata/5a995c2aba1bb57f660001fd/train/ruby


def scrolling_text(text)
  text.length.times.map { |ix| text.upcase.chars.rotate(ix).join }
end

p scrolling_text("abc") # ["ABC","BCA","CAB"]
