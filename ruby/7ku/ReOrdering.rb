# frozen_string_literal: true

# https://www.codewars.com/kata/5785cd91a1b8d5c06e000007/train/ruby

def re_ordering(text)
  arr = text.split
  arr.map do |word|
    if /[[:upper:]]/.match?(word)
      arr.delete(word)
      arr.unshift(word)
    end
  end.compact.join(' ')
end

p re_ordering('wario LoBan hello')
