# frozen_string_literal: true

# Mexican Wave
# https://www.codewars.com/kata/58f5c63f1e26ecda7e000029/train/ruby

def wave(str)
  result = []
  str.length.times do |i|
    next unless /[a-z]/.match?(str[i])
    wave_word = str.dup
    wave_word[i] = str[i].upcase
    result << wave_word
  end
  result
end

p wave("hello")
