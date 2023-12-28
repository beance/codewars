# frozen_string_literal: true

# Simple Encryption #1 - Alternating Split
# https://www.codewars.com/kata/57814d79a56c88e3e0000786/train/ruby

def encrypt(text, n)
  return text if text.empty? || n <= 0
  text = text.chars
  odd_chars = text.select.with_index { |_, i| i.odd? }.join
  even_chars = text.select.with_index { |_, i| i.even? }.join
  encrypt(odd_chars + even_chars, n - 1)
end

def decrypt(encrypted_text, n)
  return encrypted_text if encrypted_text.empty? || n <= 0

  c, s = encrypted_text.chars, encrypted_text.size / 2
  decrypt(c.drop(s).zip(c.take(s)).join, n - 1)
end
