# frozen_string_literal: true

# Numbers Which Sum of Powers of Its Digits Is The Same Number
#

def eq_sum_powdig(h_max, exp)
  (2..h_max).select { |i| i == i.digits.sum { |d| d**exp } }
end

p eq_sum_powdig(370, 3)
