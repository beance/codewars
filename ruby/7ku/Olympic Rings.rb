# frozen_string_literal: true
# Olympic Rings
# https://www.codewars.com/kata/57d06663eca260fe630001cc/train/ruby

def olympic_ring(string)
  count = 0

  string.each_char do |v|
    case v
    when /[abdegopqADOPQR]/
      count += 1
    when 'B'
      count += 2
    end
  end

  count = (count / 2).floor
  case count
  when 2
    'Bronze!'
  when 3
    'Silver!'
  when 4..Float::INFINITY
    'Gold!'
  else
    'Not even a medal!'
  end
end

p olympic_ring('wHjMudLwtoPGocnJ')