# frozen_string_literal: true

# Alternate capitalization
# https://www.codewars.com/kata/59cfc000aeb2844d16000075/train/ruby

def capitalize(s)
  result = []
  s.chars.each_with_index { |e, i| result << (i.even? ? e.capitalize : e) }
  [result.join, result.join.swapcase]
end

p capitalize('abcdef') == ['AbCdEf', 'aBcDeF']
p capitalize("codewars") == ['CoDeWaRs', 'cOdEwArS']
p capitalize("abracadabra") == ['AbRaCaDaBrA', 'aBrAcAdAbRa']
p capitalize("codewarriors") == ['CoDeWaRrIoRs', 'cOdEwArRiOrS']
p capitalize("indexinglessons") == ['InDeXiNgLeSsOnS', 'iNdExInGlEsSoNs']
p capitalize("codingisafunactivity") == ['CoDiNgIsAfUnAcTiViTy', 'cOdInGiSaFuNaCtIvItY']


# def capitalize(s)
#   result = s.gsub /.{1,2}/, &:capitalize
#   [result, result.swapcase]
# end