# frozen_string_literal: true

# Decoding a message
# https://www.codewars.com/kata/565b9d6f8139573819000056/train/ruby
def decode(message, alpha = [*'a'..'z'].join)
  message.tr(alpha, alpha.reverse)
end

p decode('r slkv mlylwb wvxlwvh gsrh nvhhztv')
