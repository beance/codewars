# frozen_string_literal: true

# Hex Hash Sum
# https://www.codewars.com/kata/5ab363ff6a176b29880000dd/train/ruby

def hex_hash_sum(code)
  code.each_char.map { |char| char.ord.to_s(16) }.join.gsub(/[^0-9]/, '')
      .chars.reduce(0) { |acc, char| acc + char.to_i }
end

def hex_hash_sum(code)
  code.unpack1('H*').scan(/\d/).sum(&:to_i)
end

p hex_hash_sum('Yo')
p hex_hash_sum('Hello, World!')
