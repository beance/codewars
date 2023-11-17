# frozen_string_literal: true
# https://www.codewars.com/kata/546f922b54af40e1e90001da/train/ruby


def alphabet_position(text)
  arr = [*'a'..'z']
  text.downcase.chars.map {|c| arr.index(c) + 1 if arr.include?(c) }.compact.join(' ')
end


p alphabet_position("The sunset sets at twelve o' clock.")
# p alphabet_position("-.-'")
