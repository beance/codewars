# frozen_string_literal: true

# Mirroring cipher
# https://www.codewars.com/kata/571af500196bb01cc70014fa/train/ruby

def mirror(code, list = 'abcdefghijklmnopqrstuvwxyz')
  code.downcase.gsub(/./) do |a|
    list.include?(a) ? list[list.length - list.index(a) - 1] : a
  end
end
