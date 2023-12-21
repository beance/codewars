# frozen_string_literal: true

# Break camelCase
# https://www.codewars.com/kata/5208f99aee097e6552000148/train/ruby
#
def solution(s)
  s.split(/(?=[A-Z])/).join(" ")
end

p solution("camelCasing")
p solution("camelCasingTest")