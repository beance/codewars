# frozen_string_literal: true
# CompoundArray
#

def compound_array(a, b)
  (a.zip(b) << b[a.size..-1]).flatten.compact
end
p compound_array([11, 12], [21, 22, 23, 24])
#[11, 21, 12, 22, 23, 24]
p compound_array([2147483647,2147483646,2147483645,2147483644,2147483643], [9])
# [2147483647,9,2147483646,2147483645,2147483644,2147483643]
