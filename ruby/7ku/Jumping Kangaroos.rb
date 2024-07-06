# frozen_string_literal: true

# Jumping Kangaroos
# https://www.codewars.com/kata/5ae7e1522c5061beb7000051/train/ruby

def kangaroo(kanga1, rate1, kanga2, rate2)
  return true if kanga1 == kanga2 && rate1 == rate2

  (kanga1 - kanga2) % (rate2 - rate1) == 0 && (kanga1 - kanga2) / (rate2 - rate1) > 0
end

p kangaroo(43,5,49,3)
# p kangaroo(-1571,4240,9023,4234)