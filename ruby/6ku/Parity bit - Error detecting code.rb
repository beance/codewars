# Parity bit - Error detecting code
# https://www.codewars.com/kata/58409435258e102ae900030f/train/ruby

def parity_bit(bits)
  str = ""
  bits.split.each do |i|
    str += if i.chars.last == "1" && i[0...-1].count("1").odd?
      i[0...-1] + " "
    elsif i.chars.last == "0" && i[0...-1].count("1").even?
      i[0...-1] + " "
    else
      "error "
    end
  end
  str.strip
end

p parity_bit("00001111 00111101")
# p parity_bit("01011001")
