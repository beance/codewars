# frozen_string_literal: true

# https://www.codewars.com/kata/5848565e273af816fb000449/train/ruby

def encrypt_this(text)
  text.gsub(/(\w)(\w)?(\w*?)(\w)?\b/) do
    "#{Regexp.last_match(1).ord}#{Regexp.last_match(4)}#{Regexp.last_match(3)}#{Regexp.last_match(2)}"
  end
end

p encrypt_this('hello world') #== "104olle 119drlo"
