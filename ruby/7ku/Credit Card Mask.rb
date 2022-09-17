# frozen_string_literal: false

# Credit Card Mask
# https://www.codewars.com/kata/5412509bd436bd33920011bc

def maskify(cc)
  cc[0...(cc.length - 4)] = '#' * (cc.length - 4) if cc.length > 4
  cc
end

p maskify('111111')
