# frozen_string_literal: true

# Pillow on the Fridge
# https://www.codewars.com/kata/57d147bcc98a521016000320/train/ruby

def pillow(s)
  left = s[0].chars.each_index.find_all { |i| s[0][i] == 'n' }
  right = s[1].chars.each_index.find_all { |i| s[1][i] == 'B' }
  left.count { |i| right.include?(i) } >= 1
end

def pillow(s)
  s[0].chars.zip(s[1].chars).include? %w[n B]
end

p pillow(['\\DjQ\\[zv]SpG]Z/[Qm\\eLL', 'amwZArsaGRmibriXBgTRZp']) # false
# p pillow([ 'n', 'B' ]) # true
# p pillow(['yF[CeAAiNihWEmKxJc/NRMVn', 'rMeIa\\KAfbjuLiTnAQxNw[XB'])  #true
# p pillow(["cxnAsnaTnbynnwQDTpv", "ABBtCBDnBTzBBvovnCx"]) # false
