# frozen_string_literal: true

# Convert integer to Whitespace format
# https://www.codewars.com/kata/55b350026cc02ac1a7000032/train/ruby

def whitespace_number(n)
  b = n.to_s(2)

  if n == 0
    " \n"
  elsif n < 0
    str = "\t"
    (1...b.length).each do |i|
      str += (b[i] == "1" ? "\t" : " ")
    end
    str + "\n"
  elsif n >= 0
    str = " "
    b.each_char do |bit|
      str += (bit == "1" ? "\t" : " ")
    end
    str + "\n"
  end
end


def whitespace_number(n)
  return " \n" if n.zero?
  format("%+b\n", n).tr("01+-", " \t \t")
end