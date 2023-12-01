# frozen_string_literal: true

# Noonerize Me
# https://www.codewars.com/kata/56dbed3a13c2f61ae3000bcd/train/ruby

def noonerize(numbers)
  numbers.each { |i| return 'invalid array' if i.is_a?(Integer) == false }
  numbers.join(' ').gsub(/(.)(.* )(.)(.*)/, '\3\2\1\4').split.map(&:to_i).reduce(:-).abs
end

p noonerize(['pippi', 9_999_999])
p noonerize([123, 456])
