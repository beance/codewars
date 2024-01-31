# frozen_string_literal: true

# Pig Atinlay
# https://www.codewars.com/kata/58702c0ca44cfc50dc000245/train/ruby
def pig_latin(word)
  return word if word.length <= 3

  "#{word[1..-1]}#{word[0]}ay"
end
p pig_latin('qwp')
