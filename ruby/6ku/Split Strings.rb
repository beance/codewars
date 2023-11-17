# frozen_string_literal: true

# https://www.codewars.com/kata/515de9ae9dcfc28eb6000001/train/ruby

def solution(str)
  result = []
  str.chars.each_slice(2) do |e|
    result << (e.size == 2 ? e.join : (e << '_').join)
  end
  result
end

p solution('abcdefg')

def solution str
  (str + '_').scan /../
end

p solution('abcdefg')
