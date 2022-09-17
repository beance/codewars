# frozen_string_literal: true

# Complementary DNA
# https://www.codewars.com/kata/554e4a2f232cdd87d9000038

def DNA_strand(dna)
  dna.tr('ACTG', 'TGAC')
end

p DNA_strand('AAAA')
