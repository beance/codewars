# frozen_string_literal: true

# Two's Complement
# https://www.codewars.com/kata/58d4785a2285e7795c00013b/train/ruby

def to_twos_complement(binary, bits)
  decimal_value = binary.gsub(/\s+/, "").to_i(2)
  if decimal_value >= 2**(bits - 1)
    decimal_value - 2**bits
  else
    decimal_value
  end
end

def from_twos_complement(n, bits)
  binary_string = if n < 0
    (2**bits + n).to_s(2)
  else
    n.to_s(2)
  end

  binary_string.rjust(bits, "0")
end

p to_twos_complement("11111110", 8)

p from_twos_complement(127, 8)
