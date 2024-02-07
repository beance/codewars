# frozen_string_literal: true
# Sine,cosine and others
#
def sctc(sin)
  cos = Math.sqrt(1 - sin**2)
  tan = sin / cos
  cot = 1 / tan

  if sin == 1
    [1, 0.0, 0.0]
  elsif sin == 0
    [0.0, 1, 0.0]
  else
    [sin.round(2), cos.round(2), tan.round(2), cot.round(2)]
  end
end


p sctc(0.5)