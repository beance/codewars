# frozen_string_literal: true
# [Code Golf] String to ASCII Character
# https://www.codewars.com/kata/5abbb33396194245d5000161/train/ruby

def solution(s)
  (s.upcase.sum / s.size).chr
end


p solution("abc")