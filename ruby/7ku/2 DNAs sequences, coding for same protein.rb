# frozen_string_literal: true

# 2 DNAs sequences, coding for same protein?
# https://www.codewars.com/kata/57cbb9e240e3024aae000b26/train/ruby

$codons = { 'TTC' => 'F', 'TTT' => 'F', 'TTA' => 'L', 'TTG' => 'L', 'CTT' => 'L', 'CTC' => 'L', 'CTA' => 'L', 'CTG' => 'L', 'ATT' => 'I',
            'ATC' => 'I', 'ATA' => 'I', 'ATG' => 'M', 'GTT' => 'V', 'GTC' => 'V', 'GTA' => 'V', 'GTG' => 'V', 'TCT' => 'S', 'TCC' => 'S', 'TCA' => 'S', 'TCG' => 'S', 'AGT' => 'S', 'AGC' => 'S', 'CCT' => 'P', 'CCC' => 'P', 'CCA' => 'P', 'CCG' => 'P', 'ACT' => 'T', 'ACC' => 'T', 'ACA' => 'T', 'ACG' => 'T', 'GCT' => 'A', 'GCC' => 'A', 'GCA' => 'A', 'GCG' => 'A', 'TAT' => 'Y', 'TAC' => 'Y', 'CAT' => 'H', 'CAC' => 'H', 'CAA' => 'Q', 'CAG' => 'Q', 'AAT' => 'N', 'AAC' => 'N', 'AAA' => 'K', 'AAG' => 'K', 'GAT' => 'D', 'GAC' => 'D', 'GAA' => 'E', 'GAG' => 'E', 'TGT' => 'C', 'TGC' => 'C', 'TGG' => 'W', 'CGT' => 'R', 'CGC' => 'R', 'CGA' => 'R', 'CGG' => 'R', 'AGA' => 'R', 'AGG' => 'R', 'GGT' => 'G', 'GGC' => 'G', 'GGA' => 'G', 'GGG' => 'G', 'TAA' => '*', 'TGA' => '*', 'TAG' => '*' }
def code_for_same_protein?(seq1, seq2)
  seq1.scan(/.{3}/).map { |e| $codons[e] }.join == seq2.scan(/.{3}/).map { |e| $codons[e] }.join
end

def code_for_same_protein?(a, b)
  a.gsub(/.../, $codons) == b.gsub(/.../, $codons)
end

def code_for_same_protein?(seq1, seq2)
  seq1 = seq1.chars.each_slice(3).map { |x| $codons[x.join] }
  seq2 = seq2.chars.each_slice(3).map { |x| $codons[x.join] }
  seq1 == seq2
end

p code_for_same_protein?('ATGTCGTCAATTTAA', 'ATGTCGTCAATTTAA')
