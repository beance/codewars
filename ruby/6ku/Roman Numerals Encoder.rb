# frozen_string_literal: true

# https://www.codewars.com/kata/51b62bf6a9c58071c600001b/train/ruby
def solution(number)

  roman_numerals = {
    1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD',
    100 => 'C', 90 => 'XC', 50 => 'L', 40 => 'XL',
    10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV', 1 => 'I'
  }

  result = ''
  roman_numerals.each do |value, roman|
    while number >= value
      result += roman
      number -= value
    end
  end

  result
end



p solution(1989)