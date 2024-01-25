# frozen_string_literal: true

# Alternate capitalization
# https://www.codewars.com/kata/59cfc000aeb2844d16000075/train/ruby

def capitalize(s)
  result = []
  s.chars.each_with_index { |e, i| result << (i.even? ? e.capitalize : e) }
  [result.join, result.join.swapcase]
end

p capitalize('abcdef') == %w[AbCdEf aBcDeF]
p capitalize('codewars') == %w[CoDeWaRs cOdEwArS]
p capitalize('abracadabra') == %w[AbRaCaDaBrA aBrAcAdAbRa]
p capitalize('codewarriors') == %w[CoDeWaRrIoRs cOdEwArRiOrS]
p capitalize('indexinglessons') == %w[InDeXiNgLeSsOnS iNdExInGlEsSoNs]
p capitalize('codingisafunactivity') == %w[CoDiNgIsAfUnAcTiViTy cOdInGiSaFuNaCtIvItY]

# def capitalize(s)
#   result = s.gsub /.{1,2}/, &:capitalize
#   [result, result.swapcase]
# end
