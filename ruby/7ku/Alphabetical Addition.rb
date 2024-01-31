# frozen_string_literal: true

# Alphabetical Addition
# https://www.codewars.com/kata/5d50e3914861a500121e1958/train/ruby
#
def add_letters(*letters)
  total = letters.reduce(25) do |total, char|
    total + char.downcase.ord - 96
  end

  (total % 26 + 97).chr
end

def add_letters(*letters)
  ((letters.sum { |c| c.ord - 96 } - 1) % 26 + 97).chr
end

p add_letters('a', 'b', 'c')