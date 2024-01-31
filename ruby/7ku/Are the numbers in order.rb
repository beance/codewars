# frozen_string_literal: true
# Are the numbers in order?
#

def is_asc_order a
  a == a.sort
end

p is_asc_order([1,6,10,18,2,4,20])