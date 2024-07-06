# frozen_string_literal: true

# Simple Fun #175: Same Encryption
# https://www.codewars.com/kata/58b6c403a38abaaf6c00006b/train/ruby

def same_encryption(s1, s2)
  f = ->(s) { s[0] + (s.size % 9).to_s + s[-1] }
  f.call(s1) == f.call(s2)
end

p same_encryption("EbnhGfjklmjhgz", "Eabcz")
