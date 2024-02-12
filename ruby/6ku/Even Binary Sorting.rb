# frozen_string_literal: true

# Even Binary Sorting
# https://www.codewars.com/kata/582bbdbcc190132e3e0001f3/train/ruby


def even_binary(n)
  binaries = n.split
  even_binaries = binaries.select { |binary| binary.to_i(2).even? }.sort
  binaries.map do |binary|
    binary.to_i(2).even? ? even_binaries.shift : binary
  end.join(" ")
end

p even_binary("101 111 100 001 010")
"101 111 010 001 100"
"101 111 100 001 010"
