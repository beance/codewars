# frozen_string_literal: true

# Simple Fun #114: "abacaba"
# https://www.codewars.com/kata/589d237fdfdef0239a00002e

def abacaba(k)
  ((k ^ (k - 1)).to_s(2).length + 96).chr
end



p abacaba(16)
