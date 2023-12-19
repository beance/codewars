# frozen_string_literal: true

# Run-length encoding

def rle(str)
  str.chars.chunk(&:itself).map { |k, v| [v.length, k] }
end

p rle("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaabbb")
