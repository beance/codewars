# frozen_string_literal: true

# https://www.codewars.com/kata/5822d89270ca28c85c0000f3
def scramble(str, arr)
  res = {}
  str.chars.each_with_index { |e, i| res[arr[i]] = e }
  res.sort_by { |key, _value| key }.to_h.values.join
end

p scramble('sc301s', [4, 0, 3, 1, 5, 2])

# def scramble(str, arr)
#   str.chars.sort_by.with_index {|n,i| arr[i]}.join
# end
