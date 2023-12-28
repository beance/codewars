# frozen_string_literal: true

# WeIrD StRiNg CaSe
# https://www.codewars.com/kata/52b757663a95b11b3d00062d/train/ruby
#
def weirdcase(string)
  string.split.map(&:chars).map do |line|
    line.map.with_index { |char, i| i.even? ? char.upcase : char.downcase }.join
  end.join(" ")
end

p weirdcase("This is a test")
