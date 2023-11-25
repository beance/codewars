# frozen_string_literal: false

# https://www.codewars.com/kata/605ae9e1d2be8a0023b494ed/train/ruby

def count_salutes(hallway)
  right_count = 0
  salutes = 0

  hallway.each_char do |char|
    case char
    when '>'
      right_count += 1
    when '<'
      salutes += right_count * 2
    end
  end

  salutes
end

p count_salutes('>----->-----<--<')
p count_salutes('>>>>>>>>>>>>>>>>>>>>>----<->')
p count_salutes('<<----<>---<')
p count_salutes('<---->---<---<-->')


# def count_salutes(hallway)
#   result = 0
#   hallway.each_char.with_index{|c, i| result += hallway[i..-1].count('<')*2 if c == '>'}
#   result
# end