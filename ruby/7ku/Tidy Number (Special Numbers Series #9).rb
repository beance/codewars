# frozen_string_literal: true
# Tidy Number (Special Numbers Series #9)
#

def tidy_number(n)
  n.to_s.chars.sort.join.to_i == n
end

p tidy_number(12)
p tidy_number(102)