# frozen_string_literal: true
# https://www.codewars.com/kata/52fea6fd158f0576b8000089/train/ruby


module Converter
  def self.to_ascii(hex)
    hex.scan(/[0-7]\h/).map { |x| x.prepend('0x').oct.chr }.join
  end

  def self.to_hex(ascii)
    ascii.chars.map { |i| i.ord.to_s(16) }.join
  end
end


str = "Look mom, no hands"
hex = "4c6f6f6b206d6f6d2c206e6f2068616e6473"

p Converter.to_hex(str)
p Converter.to_ascii(hex)